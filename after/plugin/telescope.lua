local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sr', builtin.live_grep, {})
vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sk', function()
	builtin.grep_string({ search = vim.fn.input("Search: ") });
end)
