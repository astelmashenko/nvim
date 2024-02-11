---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'doomchad',
  telescope = { style = "borderless" }
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
