-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local unmap = vim.keymap.del

-- insert mode
map("i", "jj", "<ESC>")

-- term mode
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- normal mode
map("n", "q:", "<Nop>", { noremap = true })
map("n", "<leader>rr", ":%SnipRun<cr>", { silent = true, desc = "run the file" })
map("n", "<leader>rc", ":SnipClose<cr>", { silent = true, desc = "clear snip info" })
unmap("n", "<leader>uc")
-- unmap("n","C-//")
unmap("n", "<leader>ft")
unmap("n", "<leader>fT")

-- visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "<leader>r", ":'<,'>SnipRun<cr>", { silent = true, desc = "snip run" })
map("v", "<leader>C", ":'<,'>ChatGPTEditWithInstructions<cr>", { silent = true, desc = "chatgpt instructions" })

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  map("t", "<esc>", [[<C-\><C-n>]], opts)
  map("t", "jj", [[<C-\><C-n>]], opts)
  map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  map("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end
