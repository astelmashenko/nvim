local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- vim.keymap.set('n', '<leader>fs', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>fe', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
--vim.keymap.set('n', '<leader>/', function()
--  -- You can pass additional configuration to telescope to change theme, layout, etc.
--  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--    winblend = 10,
--    previewer = false,
--  })
--end, { desc = '[/] Fuzzily search in current buffer]' })

