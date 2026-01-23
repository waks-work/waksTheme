-- waksTheme/lua/waksTheme/theme/telescope.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
  local col = colors.variants[variant] or colors.variants.default

  -- Telescope highlights
  local highlights = {
    -- Main telescope window backgrounds
    TelescopeBorder = { fg = col.comment, bg = col.float_bg },
    TelescopeNormal = { fg = col.foreground, bg = col.float_bg },

    -- Preview window
    TelescopePreviewBorder = { fg = col.comment, bg = col.float_bg },
    TelescopePreviewNormal = { fg = col.foreground, bg = col.float_bg },
    TelescopePreviewTitle = { fg = col.cyan, bg = col.float_bg },

    -- Prompt window
    TelescopePromptBorder = { fg = col.comment, bg = col.float_bg },
    TelescopePromptNormal = { fg = col.foreground, bg = col.float_bg },
    TelescopePromptPrefix = { fg = col.pink, bg = col.float_bg },
    TelescopePromptTitle = { fg = col.cyan, bg = col.float_bg },

    -- Results window
    TelescopeResultsBorder = { fg = col.comment, bg = col.float_bg },
    TelescopeResultsNormal = { fg = col.foreground, bg = col.float_bg },
    TelescopeResultsTitle = { fg = col.cyan, bg = col.float_bg },

    -- Selection and matching
    TelescopeSelectionCaret = { fg = col.pink, bg = col.selection },
    TelescopeSelection = { fg = col.pink, bg = col.selection, bold = true },
    TelescopeMatching = { fg = col.cyan, bold = true },

    -- Multi-selection
    TelescopeMultiSelection = { fg = col.purple, bg = col.selection },
    TelescopeMultiIcon = { fg = col.purple },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
