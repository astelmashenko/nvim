-- fat cursor
vim.opt.guicursor = ""

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Undo plugin config, TODO monve to undo.lua
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

-- Set highlight on search
--vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.signcolumn = 'yes'

-- Set colorscheme
-- vim.o.termguicolors = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

