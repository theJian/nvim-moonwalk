<h1 align="center"><i>MOONWALK</i></h1>

<p align="center">
<img src="https://github.com/theJian/nvim-moonwalk/actions/workflows/test.yml/badge.svg">
</p>

A highly accessible colorscheme for neovim and many other applications, with APCA-based accessibility testing to ensure a sufficient contrast ratio. APCA stands for __Accessible Perceptual Contrast Algorithm__, a new color contrast method that provides a more accurate estimation of color contrast perception.



__Screenshots__

<details>
  <summary>go</summary>
  <img width="800" src="https://github.com/theJian/nvim-moonwalk/assets/9625224/1ad054a9-4976-462d-824b-e9d2389ab7f0">
</details>


<details>
  <summary>lua</summary>
  <img width="800" src="https://github.com/theJian/nvim-moonwalk/assets/9625224/641cadba-cd80-4b6b-8bda-0272753e3558">
</details>

<details>
  <summary>javascript</summary>
  <img width="800" src="https://github.com/theJian/nvim-moonwalk/assets/9625224/af5735bd-17c4-4b40-9c34-d9c37af2bb1e">

</details>

<details>
  <summary>python</summary>
  <img width="800" src="https://github.com/theJian/nvim-moonwalk/assets/9625224/6eb7e3f3-86f0-4d59-be6a-9fa2c0f987f2">
</details>

<details>
  <summary>html</summary>
  <img width="800" src="https://github.com/theJian/nvim-moonwalk/assets/9625224/51af890e-a66c-4263-9e23-69917a7d2d88">
</details>

<details>
  <summary>terminal colors</summary>
  <img width="602" alt="Screen Shot 2023-12-07 at 14 13 16" src="https://github.com/theJian/nvim-moonwalk/assets/9625224/31fdd549-904c-4bc4-bdc6-3d605a5c4a0b">
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
