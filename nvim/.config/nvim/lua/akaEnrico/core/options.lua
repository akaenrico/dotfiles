vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- Tabs and Identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line Wrap
opt.wrap = false

-- Search Settings
opt.ignorecase = true
opt.smartcase = true -- If multiple cases are included in search, assume case-sensitivity

-- Cursor Line
opt.cursorline = true

-- Appearence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspacing
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Window Split
opt.splitright = true
opt.splitbelow = true
