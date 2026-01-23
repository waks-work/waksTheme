-- waksTheme/lua/waksTheme/theme/nvimtree.lua
local colors = require('waksTheme.colors')

local M = {}

M.set_highlights = function(variant)
  local col = colors.variants[variant] or colors.variants.default

  -- NvimTree highlights
  local highlights = {
    NvimTreeFolderName = { fg = col.cyan },
    NvimTreeFolderIcon = { fg = col.cyan },
    NvimTreeNormal = { fg = col.foreground, bg = col.tokyo_bg_mid },
    NvimTreeNormalNC = { fg = col.comment, bg = col.tokyo_bg_mid },
    NvimTreeOpenedFolderName = { fg = col.cyan },
    NvimTreeEmptyFolderName = { fg = col.cyan },
    NvimTreeIndentMarker = { fg = col.comment },
    NvimTreeWinSeparator = {
      fg = col.tokyo_bg_mid,
      bg = col.tokyo_bg_mid,
    },
    NvimTreeRootFolder = { fg = col.purple, bold = true },
    NvimTreeSymlink = { fg = col.pink },
    NvimTreeStatuslineNc = { fg = col.tokyo_bg_mid, bg = col.tokyo_bg_mid },
    NvimTreeGitDirty = { fg = col.yellow },
    NvimTreeGitNew = { fg = col.green },
    NvimTreeGitDeleted = { fg = col.red },
    NvimTreeSpecialFile = { fg = col.pink },
    NvimTreeImageFile = { fg = col.foreground },
    NvimTreeOpenedFile = { fg = col.pink },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
