<h1 align="center"><i>MOONWALK</i></h1>

<p align="center">
<img src="https://github.com/theJian/nvim-moonwalk/actions/workflows/test.yml/badge.svg">
</p>

A highly accessible colorscheme for neovim and many other applications, with APCA-based accessibility testing to ensure a sufficient contrast ratio. APCA stands for __Accessible Perceptual Contrast Algorithm__, a new color contrast method that provides a more accurate estimation of color contrast perception.



__Screenshots__

<details>
  <summary>javascript</summary>
  <img width="912" alt="Screen Shot 2023-11-14 at 13 06 03" src="https://github.com/theJian/nvim-moonwalk/assets/9625224/686964c0-de31-4906-9473-b30cffc1fa81">
</details>

<details>
  <summary>python</summary>
  <img width="912" alt="Screen Shot 2023-11-14 at 14 19 31" src="https://github.com/theJian/nvim-moonwalk/assets/9625224/d733feb1-c141-42f8-9202-51ca7d641cb3">
</details>

<details>
  <summary>html</summary>
  <img width="912" alt="Screen Shot 2023-11-14 at 14 20 47" src="https://github.com/theJian/nvim-moonwalk/assets/9625224/0f215f60-9c61-4db0-92ed-fb1e96493f37">
</details>

<details>
  <summary>terminal colors</summary>
  <img width="742" alt="Screen Shot 2023-11-10 at 15 26 45" src="https://github.com/theJian/nvim-moonwalk/assets/9625224/e822691c-ac87-418e-8666-529410ba73c2">
</details>




## ✨ Features

- Treesitter, lsp, and diagnostic highlights
- Terminal color
- Lualine support
- Extra configurations for other applications


## 🛠 Options
```lua
require'moonwalk'.setup({
  transparent = false,      -- Boolean, default: false. Toggle transparency.
  terminal_color = true,    -- Boolean, default: true. Toggle terminal color.
})
```

## 🙌 Contributing

We use APCA to compute the contrast of highlight groups and test to ensure readability. Your PR needs to pass the accessibility test, you can run the test locally with `make test`.
