# /// script
# requires-python = ">=3.10"
# dependencies = ["pynvim==0.6.0", "pillow==11.3.0"]
# ///
"""Capture a clean Neovim UI grid as PNGs, without a desktop or terminal."""
import argparse
from pathlib import Path

import pynvim
from PIL import Image, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parent.parent
COLS, ROWS = 80, 30


def capture(source, output, font):
    nvim = pynvim.attach("child", argv=["nvim", "--embed", "--clean", "-n"])
    grid = [[(" ", 0) for _ in range(COLS)] for _ in range(ROWS)]
    highlights = {0: {}}
    defaults = [0, 0xffffff]
    try:
        nvim.ui_attach(COLS, ROWS, rgb=True, ext_linegrid=True)
        nvim.options["runtimepath"] = str(ROOT) + "," + nvim.options["runtimepath"]
        nvim.options["background"] = "light"
        nvim.command("colorscheme moonwalk")
        nvim.command("set number cursorline noswapfile nowrap noruler noshowmode laststatus=0")
        nvim.command("set signcolumn=no foldcolumn=0 scrolloff=0")
        nvim.command("edit " + nvim.funcs.fnameescape(str(source)))
        nvim.command("syntax enable")
        nvim.command("normal! gg0")
        # The notification follows all redraw events on the same RPC channel.
        nvim.exec_lua("vim.cmd('redraw!'); vim.rpcnotify(..., 'capture_ready')", nvim.channel_id)
        while True:
            message = nvim.next_message()
            if message is None:
                raise RuntimeError("Neovim exited before the capture completed")
            if message[1] == "capture_ready":
                break
            if message[1] != "redraw":
                continue
            for event, *calls in message[2]:
                for args in calls:
                    if event == "default_colors_set":
                        defaults = args[:2]
                    elif event == "hl_attr_define":
                        highlights[args[0]] = args[1]
                    elif event == "grid_clear":
                        grid = [[(" ", 0) for _ in range(COLS)] for _ in range(ROWS)]
                    elif event == "grid_line":
                        _, row, col, cells, *_ = args
                        hl = 0
                        for cell in cells:
                            text = cell[0]
                            hl = cell[1] if len(cell) > 1 else hl
                            repeat = cell[2] if len(cell) > 2 else 1
                            for _ in range(repeat):
                                grid[row][col] = (text, hl)
                                col += 1
                    elif event == "grid_scroll":
                        _, top, bottom, left, right, rows, cols = args
                        old = [row[:] for row in grid]
                        for y in range(top, bottom):
                            for x in range(left, right):
                                grid[y][x] = old[y + rows][x + cols] if top <= y + rows < bottom and left <= x + cols < right else (" ", 0)
        width = round(font.getlength("M"))
        height = sum(font.getmetrics()) + 4
        image = Image.new("RGB", (COLS * width, ROWS * height))
        draw = ImageDraw.Draw(image)
        for y, row in enumerate(grid):
            for x, (text, hl) in enumerate(row):
                attrs = highlights.get(hl, {})
                fg, bg = attrs.get("foreground", defaults[0]), attrs.get("background", defaults[1])
                if attrs.get("reverse"):
                    fg, bg = bg, fg
                box = (x * width, y * height, (x + 1) * width - 1, (y + 1) * height - 1)
                draw.rectangle(box, fill=f"#{bg:06x}")
                draw.text((x * width, y * height + 2), text, font=font, fill=f"#{fg:06x}")
                if attrs.get("underline") or attrs.get("undercurl"):
                    draw.line((box[0], box[3] - 2, box[2], box[3] - 2), fill=f"#{fg:06x}")
        output.parent.mkdir(parents=True, exist_ok=True)
        image.save(output)
        print(output.relative_to(ROOT) if output.is_relative_to(ROOT) else output)
    finally:
        try:
            nvim.command("qa!")
        except (EOFError, OSError):
            pass
        nvim.close()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--font", help="Path to a monospace TrueType/OpenType font")
    parser.add_argument("--output", type=Path, default=ROOT / "screenshots")
    args = parser.parse_args()
    candidates = [args.font] if args.font else [
        "/System/Library/Fonts/Menlo.ttc",
        "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf",
    ]
    path = next((path for path in candidates if Path(path).is_file()), None)
    if path is None:
        parser.error("No monospace font found; pass --font /path/to/font.ttf")
    font = ImageFont.truetype(path, 18)
    for source in sorted((ROOT / "scripts/screenshots").iterdir()):
        capture(source, args.output / f"{source.stem}-light.png", font)


if __name__ == "__main__":
    main()
