vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>n", vim.cmd.enew)

vim.keymap.set("n", "<leader>br", vim.cmd.bnext)

vim.keymap.set("n", "<leader>bw", vim.cmd.bprevious)

vim.keymap.set("v", "<leader>l", "c\"\"<ESC>hpi")

vim.cmd("set clipboard=unnamed")

-- vim.api.nvim_set_keymap("i", "<BS>", "<Nop>", { noremap=true })
--
--
  local python_cmd = vim.fn.has('python3') == 1 and 'py3f' or 'pyf'
  local python_path = '/usr/share/clang/clang-format.py'

  -- Normal mode mapping
  vim.api.nvim_set_keymap('n', '<C-K>', string.format(':%s %s<CR>', python_cmd, python_path), { noremap = true, silent = true })

  -- Insert mode mapping
  vim.api.nvim_set_keymap('i', '<C-K>', string.format('<C-O>:%s %s<CR>', python_cmd, python_path), { noremap = true, silent = true })

vim.cmd("inoremap <BS> <Nop>")

-- Set the number of spaces for a tab
vim.opt.tabstop = 2

-- Set the number of spaces for indentation
vim.opt.shiftwidth = 2

-- Use spaces instead of tabs
vim.opt.expandtab = true
