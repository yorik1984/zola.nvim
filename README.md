# zola.nvim

### W.I.P.🚧

A Neovim plugin that helps you write [Zola](https://www.getzola.org/) posts quickly.
Using [vim-toml](https://github.com/cespare/vim-toml) for [TOML](https://toml.io/en/) syntax highlight.
Using [Vim-Jinja2-Syntax](https://github.com/Glench/Vim-Jinja2-Syntax) for [Jinja](https://jinja.palletsprojects.com/en/3.0.x/) syntax highlight.

Optional:

- Using [vim-toml](https://github.com/cespare/vim-toml) for [TOML](https://toml.io/en/) syntax highlight for `Neovim < 0.6.0` ([717bd87](https://github.com/cespare/vim-toml/commit/2c8983cc391287e5e26e015c3ab9c38de9f9b759))

### 🌟 Features

- Additions Markdown highlighting to correctly syntax highlight the frontmatter in Zola posts.

**Markdown example with TOML and Jinja syntax will now highlight correctly**

There are highlights [example file](preview/jinja.md) with different themes:

- [newpaper.nvim](https://github.com/yorik1984/newpaper.nvim)
- [gruvbox-material](https://github.com/sainnhe/gruvbox-material)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

![jinja](https://user-images.githubusercontent.com/1559192/163708381-4139722d-f16e-4546-ab5d-82313b29f1d8.png)

### ⚡️Requirements

- Neovim ⪖ 0.6.0
- [Vim-Jinja2-Syntax](https://github.com/Glench/Vim-Jinja2-Syntax)
- Optional:
  - for Neovim < 0.6.0 [vim-toml](https://github.com/cespare/vim-toml) ([717bd87](https://github.com/cespare/vim-toml/commit/2c8983cc391287e5e26e015c3ab9c38de9f9b759))

### 📦 Installation

Install via your favorite package manager:

#### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
require("lazy").setup({
    {
        "yorik1984/zola.nvim",
        dependencies = "Glench/Vim-Jinja2-Syntax",
    },
})
```
#### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    "yorik1984/zola.nvim",
    requires = {
        "Glench/Vim-Jinja2-Syntax",
        "cespare/vim-toml",             -- for Neovim ⩽ 0.6.0
    }
}
```

### 🚀 Usage

Just install plugin. Write zola-markdown files and enjoy by syntax highlighting 😃

### ⚙️ Configuration

Add autopairs with [nvim-autopairs](https://github.com/windwp/nvim-autopairs):

| Before  | Insert  | After     |
| ------- | ------- | --------- |
| `{{┃}}` | `space` | `{{ ┃ }}` |
| `{%┃}`  | `space` | `{% ┃ %}` |

```lua
local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

npairs.add_rules{
    Rule("{{ "," ",  {"markdown", "jinja.html"}),
    Rule("{% "," %", {"markdown", "jinja.html"}),
}
```

### ⛩️  Inspired by:

- [vim-jekyll-syntax](https://github.com/emanuelen5/vim-jekyll-syntax)
- [markdown-frontmatter-syntax-highlighting](https://www.maero.dk/markdown-frontmatter-syntax-highlighting/)
