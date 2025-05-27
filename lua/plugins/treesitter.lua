-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    -- opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
    --   "lua",
    --   "go",
    --   "rust"
    --   -- add more arguments for adding more treesitter parsers
    -- }),
    vim.list_extend(opts.ensure_installed, {
      "lua",
      "go",
      "rust"
    })
    opts.incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<c-space>',
            node_incremental = '<c-space>',
            scope_incremental = '<c-s>',
            node_decremental = '<c-backspace>',
        },
    }
  end,
}
