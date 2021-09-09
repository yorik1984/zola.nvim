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
+ Optional:
    - [nvim-markdown](https://github.com/ixru/nvim-markdown) or [vim-markdown](https://github.com/plasticboy/vim-markdown)


### 📦 Installation

Install via your favorite package manager:

#### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    "yorik1984/zola.nvim",
    requires = {
        "cespare/vim-toml",
        "Glench/Vim-Jinja2-Syntax",
        "ixru/nvim-markdown"        -- optional
    }
}
```

### 🚀 Usage

Just writing zola-markdown files and enjoy by syntax highlighting 😃

```vim
" init.vim
lua << EOF 
    require('zola').setup()
EOF
```

```lua
-- Lua:
require('zola').setup()
```

### ⚙️ Configuration

```vim
" init.vim
lua << EOF 
    require('zola').setup({
        mkd_plugins_support = false
    })
EOF
```

```lua
-- Lua:
-- Option from plugin [n]vim-markdown
vim.g.vim_markdown_toml_frontmatter = 1

vim.g.zola_mkd_plugins_support = false

-- OR better
require('zola').setup({
    mkd_plugins_support = false
})
```

You can enable using included TOML-highlighting into plugins [n]vim-markdown. Technically it do same but have only other delimiters `+++` highlighting.
In screenshot above you can see this. For `+++` using `markdownH1` highlight group.
Read more about [vim_markdown_toml_frontmatter](https://github.com/ixru/nvim-markdown#syntax-extensions).

Available options:

| Option              | Default | Description                                                  |
| ------------------- | ------- | ------------------------------------------------------------ |
| mkd_plugins_support | `true`  | Enable supporting plugins `nvim-markdown` or `vim-markdown`. Sometimes settings for zola-syntax with default markdown syntax has conflict with properly working settings with special plugins. Advice: use always `true` and special plugins for more beautiful syntax highlight. "There can only be one"©. |


### ⛩️  Inspired by:

+ [vim-jekyll-syntax](https://github.com/emanuelen5/vim-jekyll-syntax)
+ [markdown-frontmatter-syntax-highlighting](https://www.maero.dk/markdown-frontmatter-syntax-highlighting/)
