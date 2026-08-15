
vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

--Numbering
opt.relativenumber = false
opt.number = true

--Tabs and Indentation
opt.tabstop = 4
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

--Search
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true

--Backspace
opt.backspace = "indent,eol,start"

--Copy Paste
opt.clipboard:append("unnamedplus")

--Split screen
opt.splitright = true
opt.splitbelow = true

--Coloring
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"




