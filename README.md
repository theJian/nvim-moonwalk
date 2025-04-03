<h1 align="center"><i>MOONWALK</i></h1>

<p align="center">
<img src="https://github.com/theJian/nvim-moonwalk/actions/workflows/test.yml/badge.svg">
</p>

A Neovim color scheme designed for **optimal readability** and **visual comfort**, leveraging modern color science to ensure accessibility across diverse environments.

## What is this?

**moonwalk** is a code highlighting theme that prioritizes perceptual accessibility through two advanced algorithms:
- **APCA (Accessible Perceptual Contrast Algorithm)**: Dynamically adjusts foreground/background contrast for human visual perception.
- **CIEDE2000 Color-Difference Formula**: Ensures perceptually uniform color differentiation between syntax elements.

Built for developers who value both aesthetics and eye comfort, this theme maintains readability in varying lighting conditions and minimizes visual fatigue during extended coding sessions.

__Screenshots__

> TBD


## ✨ Features

- Enhanced Readability
- Treesitter, lsp, and diagnostic highlights
- Terminal color
- Lualine support
- Extra configurations for other applications


## 📦 Installation
Install via your preferred package manager then enable the theme.
```lua
vim.o.background = 'light' -- or set to 'dark' for the experimental dark theme
vim.cmd.colorscheme'moonwalk'
```


## 🛠 Options
```lua
require'moonwalk'.setup({
  transparent = false,      -- Boolean, default: false. Toggle transparency.
  terminal_color = true,    -- Boolean, default: true. Toggle terminal color.
})
```


## 🙌 Contributing

### Reporting Issues

Open a GitHub Issue for:

  - Perceptual contrast problems

  - Color differentiation ambiguities

  - Highlight group inconsistencies

### Code Contributions

Ensure changes pass accessibility tests: `make test`
