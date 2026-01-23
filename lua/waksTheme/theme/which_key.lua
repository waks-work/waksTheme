-- waksTheme/lua/waksTheme/theme/which_key.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
  local col = colors.variants[variant] or colors.variants.default

  local highlights = {
    -- Main which-key window
    WhichKey = { fg = col.cyan, bg = col.float_bg },
    WhichKeyGroup = { fg = col.purple, bg = col.float_bg },
    WhichKeyDesc = { fg = col.pink, bg = col.float_bg },
    WhichKeySeparator = { fg = col.comment, bg = col.float_bg },
    WhichKeyFloat = { bg = col.float_bg },
    WhichKeyBorder = { fg = col.comment, bg = col.float_bg },
    WhichKeyValue = { fg = col.comment, bg = col.float_bg },

    -- Additional which-key specific
    WhichKeyNormal = { fg = col.foreground, bg = col.float_bg },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
