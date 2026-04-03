-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Line numbers
opt.relativenumber = true -- Relative line numbers
opt.number = true -- Show absolute line number on cursor line

-- Tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- Expand tab to spaces
opt.autoindent = true -- Copy indent from current line when starting new one
opt.smartindent = true -- Smart autoindenting on new lines

-- Line wrapping
opt.wrap = false -- Disable line wrapping

-- Search settings
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- If you include mixed case in your search, assumes you want case-sensitive

-- Cursor line
opt.cursorline = true -- Highlight the current cursor line

-- Appearance
opt.termguicolors = true -- True color support
opt.signcolumn = "yes" -- Show sign column so that text doesn't shift

-- Backspace
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- Split windows
opt.splitright = true -- Split vertical window to the right
opt.splitbelow = true -- Split horizontal window to the bottom

-- Performance
opt.updatetime = 250 -- Faster completion (default is 4000ms)
opt.timeoutlen = 300 -- Faster key sequence completion

-- Undo and backup
opt.undofile = true -- Enable persistent undo
opt.swapfile = false -- Disable swapfile

-- Scrolloff
opt.scrolloff = 8 -- Minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 8

-- Mouse
opt.mouse = "a" -- Enable mouse support

vim.g.lazyvim_picker = "telescope"
