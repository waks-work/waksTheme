-- waksTheme/lua/waksTheme/theme/cmp.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
  local col = colors.variants[variant] or colors.variants.default

  -- CMP (nvim-cmp) highlights for waksTheme colors
  local highlights = {
    -- Base - Add backgrounds here!
    CmpNormal = { fg = col.foreground, bg = col.float_bg },
    CmpBorder = { fg = col.comment, bg = col.float_bg },
    CmpDocumentation = { fg = col.foreground, bg = col.float_bg },
    CmpDocumentationBorder = { fg = col.comment, bg = col.float_bg },

    CmpItemAbbr = { fg = col.foreground, bg = col.float_bg },
    CmpItemAbbrDeprecated = { fg = col.comment, bg = col.float_bg, strikethrough = true },
    CmpItemAbbrMatch = { fg = col.cyan, bg = col.float_bg, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = col.cyan, bg = col.float_bg, bold = true },
    CmpItemKind = { fg = col.cyan, bg = col.float_bg },
    CmpItemMenu = { fg = col.comment, bg = col.float_bg },

    -- Selection
    CmpItemAbbrMatchSel = { fg = col.cyan, bg = col.selection, bold = true },
    CmpItemAbbrMatchFuzzySel = { fg = col.cyan, bg = col.selection, bold = true },

    -- Kind support - using waksTheme colors
    CmpItemKindSnippet = { fg = col.purple, bg = col.float_bg },
    CmpItemKindKeyword = { fg = col.pink, bg = col.float_bg },
    CmpItemKindText = { fg = col.green, bg = col.float_bg },
    CmpItemKindMethod = { fg = col.function_name, bg = col.float_bg },
    CmpItemKindConstructor = { fg = col.struct_definition, bg = col.float_bg },
    CmpItemKindFunction = { fg = col.function_name, bg = col.float_bg },
    CmpItemKindFolder = { fg = col.cyan, bg = col.float_bg },
    CmpItemKindModule = { fg = col.cyan, bg = col.float_bg },
    CmpItemKindConstant = { fg = col.purple, bg = col.float_bg },
    CmpItemKindField = { fg = col.struct_field, bg = col.float_bg },
    CmpItemKindProperty = { fg = col.struct_field, bg = col.float_bg },
    CmpItemKindEnum = { fg = col.purple, bg = col.float_bg },
    CmpItemKindUnit = { fg = col.green, bg = col.float_bg },
    CmpItemKindClass = { fg = col.struct_definition, bg = col.float_bg },
    CmpItemKindVariable = { fg = col.variable_cpp, bg = col.float_bg },
    CmpItemKindFile = { fg = col.cyan, bg = col.float_bg },
    CmpItemKindInterface = { fg = col.type_user, bg = col.float_bg },
    CmpItemKindColor = { fg = col.red, bg = col.float_bg },
    CmpItemKindReference = { fg = col.red, bg = col.float_bg },
    CmpItemKindEnumMember = { fg = col.red, bg = col.float_bg },
    CmpItemKindStruct = { fg = col.struct_definition, bg = col.float_bg },
    CmpItemKindValue = { fg = col.purple, bg = col.float_bg },
    CmpItemKindEvent = { fg = col.cyan, bg = col.float_bg },
    CmpItemKindOperator = { fg = col.pink, bg = col.float_bg },
    CmpItemKindTypeParameter = { fg = col.type_user, bg = col.float_bg },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
