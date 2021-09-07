#  zola.nvim

###  W.I.P.🚧

A neovim plugin that helps you write [Zola](https://www.getzola.org/) posts quickly. 
Using [vim-toml](https://github.com/cespare/vim-toml) for [TOML](https://toml.io/en/) syntax highlight.
Using [Vim-Jinja2-Syntax](https://github.com/Glench/Vim-Jinja2-Syntax) for [Jinja](https://jinja.palletsprojects.com/en/3.0.x/) syntax highlight.

### 🌟 Features
+ Additions to Markdown highlighting to correctly syntax highlight the front matter in Zola posts.

**Markdown example with TOML and Jinja syntax will now highlight correctly**

![example](https://user-images.githubusercontent.com/1559192/132262784-6a3b0191-1b3a-4361-871d-43fcfcea6ff2.png)

 ⚠️[newpaper.nvim](https://github.com/yorik1984/newpaper.nvim) colorscheme on screenshot

### ⚡️ Requirements

+ Neovim >= 0.5.0
+ [vim-toml](https://github.com/cespare/vim-toml)
+ [Vim-Jinja2-Syntax](https://github.com/Glench/Vim-Jinja2-Syntax)

### 📦 Installation

Install via your favorite package manager:

#### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {'yorik1984/zola.nvim', requires = {'cespare/vim-toml', 'Glench/Vim-Jinja2-Syntax'}}
```

### 🚀 Usage

Just writing zola-markdown files and enjoy by syntax highlighting 😃

### ⛩️  Inspired by:

+ [vim-jekyll-syntax](https://github.com/emanuelen5/vim-jekyll-syntax)
+ [markdown-frontmatter-syntax-highlighting](https://www.maero.dk/markdown-frontmatter-syntax-highlighting/)
