-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local unmap = vim.keymap.del

-- insert mode
local function imap(lhs, rhs, opts)
  return map("i", lhs, rhs, opts)
end

imap("jj", "<ESC>")

-- term mode
local function tmap(lhs, rhs, opts)
  return map("t", lhs, rhs, opts)
end
tmap("<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- normal mode
local function nmap(lhs, rhs, opts)
  return map("n", lhs, rhs, opts)
end
nmap("<leader>rr", ":%SnipRun<cr>", { silent = true, desc = "run the file" })
nmap("<leader>rc", ":SnipClose<cr>", { silent = true, desc = "clear snip info" })

local function nunmap(lhs, rhs, opts)
  return unmap("n", lhs, rhs, opts)
end

-- visual mode
local function vmap(lhs, rhs, opts)
  return map("v", lhs, rhs, opts)
end

vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")
vmap("<leader>r", ":'<,'>SnipRun<cr>", { silent = true, desc = "snip run" })
