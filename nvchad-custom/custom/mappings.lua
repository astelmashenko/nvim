local M = {}

M.abc = {
  n = {
   ["<leader>s"] = { "<cmd>w<CR>", "Save file" },
   ["<leader>q"] = { "<cmd>q<CR>", "Quit" },
   -- ["<leader>x"] = { "<cmd>x<CR>", "Save and quit" },
   ["<C-a>"] = { "gg<S-v>G", "Select all" },
   ["<leader>fr"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Find and replace" },


-- vim.keymap.set('n', '<leader>s', ':vsplit<Return><C-w>w', { silent = true })
--
-- vim.keymap.set('n', 'H', '^')
-- vim.keymap.set('n', 'L', '$')
--
-- vim.keymap.set('n', '<leader>q', '<cmd>q<cr>')
-- vim.keymap.set('n', '<leader>w', '<cmd>w<cr>')
-- vim.keymap.set('n', '<leader>x', '<cmd>x<cr>')
--
-- --move selected lines
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


  },
}

return M
