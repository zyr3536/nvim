return {
  "akinsho/toggleterm.nvim",
  cmd = { "ToggleTerm", "TermExec", "TermSelect" },
  version = "*",
  keys = {
    {
      "<leader>th",
      ":ToggleTerm size=15 direction=horizontal<cr>",
      desc = "Terminal Horizontal",
    },
    {
      "<leader>tf",
      ":ToggleTerm direction=float<cr>",
      desc = "Terminal Float",
    },
    {
      "<leader>tv",
      ":ToggleTerm size=80 direction=vertical<cr>",
      desc = "Terminal Vertical",
    },
    {
      "<c-\\>",
      mode = { "n", "t" },
      desc = "Toggle Terminal",
    },
  },
  opts = {
    highlights = {
      Normal = { link = "Normal" },
      NormalNC = { link = "NormalNC" },
      NormalFloat = { link = "NormalFloat" },
      FloatBorder = { link = "FloatBorder" },
      StatusLine = { link = "StatusLine" },
      StatusLineNC = { link = "StatusLineNC" },
      WinBar = { link = "WinBar" },
      WinBarNC = { link = "WinBarNC" },
    },
    -- Dynamic size based on direction
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    on_create = function()
      vim.opt.foldcolumn = "0"
      vim.opt.signcolumn = "no"
    end,
    on_open = function(term)
      vim.cmd("startinsert!")
      -- Set terminal-specific keymaps
      local opts = { buffer = term.bufnr }
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
      vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
      vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
      vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
    end,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    persist_mode = true,
    direction = "float",
    close_on_exit = true,
    shell = vim.o.shell,
    auto_scroll = true,
    float_opts = {
      border = "rounded",
      winblend = 0,
    },
  },
}
