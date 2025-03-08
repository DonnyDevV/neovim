vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true -- show absolute line number on cursor line

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitivity

--cursor linie
opt.cursorline = true -- highlight the current cursor line

-- backspace
opt.backspace = "indent,eol,start" --allow backspace on indent, end of line or insert mode

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register when copying in neovim

opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.termguicolors = true
