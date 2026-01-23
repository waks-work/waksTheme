-- waksTheme/lua/waksTheme/theme/c.lua
local colors = require('waksTheme.colors')

local M = {}

M.set_highlights = function(variant)
  local col = colors.variants[variant] or colors.variants.default

  -- C/C++ specific highlights
  local highlights = {
    -- ===== IDENTIFIERS (variables like ret, opt, arg) =====
    ["@variable.c"] = { fg = col.variable_cpp },
    ["@variable.cpp"] = { fg = col.variable_cpp },
    ["@lsp.type.variable.c"] = { fg = col.variable_cpp },
    ["@lsp.type.variable.cpp"] = { fg = col.variable_cpp },

    -- ===== PREPROCESSOR DIRECTIVES (CRITICAL!) =====
    -- These catch #if, #else, #endif, #ifndef, #define, etc.
    ["@keyword.directive.c"] = { fg = col.pink },
    ["@keyword.directive.cpp"] = { fg = col.pink },
    ["@keyword.directive.define.c"] = { fg = col.pink },
    ["@keyword.directive.define.cpp"] = { fg = col.pink },
    ["@preproc.c"] = { fg = col.pink },
    ["@preproc.cpp"] = { fg = col.pink },
    ["@define.c"] = { fg = col.pink },
    ["@define.cpp"] = { fg = col.pink },

    -- Specific preprocessor keywords
    ["@keyword.if.c"] = { fg = col.pink },
    ["@keyword.ifdef.c"] = { fg = col.pink },
    ["@keyword.ifndef.c"] = { fg = col.pink },
    ["@keyword.else.c"] = { fg = col.pink },
    ["@keyword.elif.c"] = { fg = col.pink },
    ["@keyword.endif.c"] = { fg = col.pink },
    ["@keyword.include.c"] = { fg = col.pink },
    ["@keyword.pragma.c"] = { fg = col.pink },

    -- Include statements
    ["@include.c"] = { fg = col.pink },
    ["@include.cpp"] = { fg = col.pink },

    -- ===== COMMENTS =====
    ["@comment.c"] = { fg = col.comment, italic = true },
    ["@comment.cpp"] = { fg = col.comment, italic = true },
    ["@comment.documentation.c"] = { fg = col.comment, italic = true },
    ["@comment.documentation.cpp"] = { fg = col.comment, italic = true },

    -- Multi-line comments
    ["@lsp.type.comment.c"] = { fg = col.comment, italic = true },
    ["@lsp.type.comment.cpp"] = { fg = col.comment, italic = true },

    -- ===== KEYWORDS =====
    ["@keyword.c"] = { fg = col.pink },
    ["@keyword.cpp"] = { fg = col.pink },

    -- Control flow
    ["@keyword.control.c"] = { fg = col.control_flow },
    ["@keyword.control.cpp"] = { fg = col.control_flow },
    ["@keyword.return.c"] = { fg = col.control_flow },
    ["@keyword.return.cpp"] = { fg = col.control_flow },
    ["@keyword.conditional.c"] = { fg = col.control_flow },
    ["@keyword.conditional.cpp"] = { fg = col.control_flow },
    ["@keyword.repeat.c"] = { fg = col.control_flow },
    ["@keyword.repeat.cpp"] = { fg = col.control_flow },

    -- Labels (finish:, error:, etc.)
    ["@label.c"] = { fg = col.control_flow },
    ["@label.cpp"] = { fg = col.control_flow },

    -- Storage class
    ["@storageclass.c"] = { fg = col.pink },
    ["@storageclass.cpp"] = { fg = col.pink },
    ["@keyword.storage.c"] = { fg = col.pink },
    ["@keyword.storage.cpp"] = { fg = col.pink },

    -- Type qualifiers
    ["@type.qualifier.c"] = { fg = col.pink },
    ["@type.qualifier.cpp"] = { fg = col.pink },
    ["@keyword.modifier.c"] = { fg = col.pink },
    ["@keyword.modifier.cpp"] = { fg = col.pink },

    -- ===== TYPES =====
    ["@type.c"] = { fg = col.type_user },
    ["@type.cpp"] = { fg = col.type_user },
    ["@type.builtin.c"] = { fg = col.type_primitive },
    ["@type.builtin.cpp"] = { fg = col.type_primitive },
    ["@type.definition.c"] = { fg = col.struct_definition },
    ["@type.definition.cpp"] = { fg = col.struct_definition },

    ["@lsp.type.struct.c"] = { fg = col.struct_definition },
    ["@lsp.type.struct.cpp"] = { fg = col.struct_definition },
    ["@lsp.type.enum.c"] = { fg = col.purple },
    ["@lsp.type.enum.cpp"] = { fg = col.purple },

    -- ===== FUNCTIONS =====
    ["@function.c"] = { fg = col.function_name },
    ["@function.cpp"] = { fg = col.function_name },
    ["@function.call.c"] = { fg = col.function_name },
    ["@function.call.cpp"] = { fg = col.function_name },
    ["@lsp.type.function.c"] = { fg = col.function_name },
    ["@lsp.type.function.cpp"] = { fg = col.function_name },

    -- ===== PARAMETERS =====
    ["@parameter.c"] = { fg = col.parameter },
    ["@parameter.cpp"] = { fg = col.parameter },
    ["@lsp.type.parameter.c"] = { fg = col.parameter },
    ["@lsp.type.parameter.cpp"] = { fg = col.parameter },

    -- ===== CONSTANTS & MACROS =====
    ["@constant.c"] = { fg = col.cyan },
    ["@constant.cpp"] = { fg = col.cyan },
    ["@constant.builtin.c"] = { fg = col.purple },
    ["@constant.builtin.cpp"] = { fg = col.purple },
    ["@constant.macro.c"] = { fg = col.pink },
    ["@constant.macro.cpp"] = { fg = col.pink },

    ["@lsp.type.macro.c"] = { fg = col.pink },
    ["@lsp.type.macro.cpp"] = { fg = col.pink },

    -- ===== OPERATORS =====
    ["@operator.c"] = { fg = col.pink },
    ["@operator.cpp"] = { fg = col.pink },
    ["@punctuation.delimiter.c"] = { fg = col.foreground },
    ["@punctuation.delimiter.cpp"] = { fg = col.foreground },
    ["@punctuation.bracket.c"] = { fg = col.foreground },
    ["@punctuation.bracket.cpp"] = { fg = col.foreground },

    -- Pointer operators
    ["@operator.address.c"] = { fg = col.cyan },
    ["@operator.dereference.c"] = { fg = col.cyan },
    ["@operator.address.cpp"] = { fg = col.cyan },
    ["@operator.dereference.cpp"] = { fg = col.cyan },

    -- ===== C++ SPECIFIC =====
    ["@keyword.class.cpp"] = { fg = col.pink },
    ["@keyword.namespace.cpp"] = { fg = col.pink },
    ["@keyword.template.cpp"] = { fg = col.pink },
    ["@keyword.using.cpp"] = { fg = col.pink },
    ["@keyword.virtual.cpp"] = { fg = col.pink },
    ["@keyword.override.cpp"] = { fg = col.pink },
    ["@keyword.public.cpp"] = { fg = col.pink },
    ["@keyword.protected.cpp"] = { fg = col.pink },
    ["@keyword.private.cpp"] = { fg = col.pink },

    -- ===== PROPERTIES/FIELDS =====
    ["@property.c"] = { fg = col.struct_field },
    ["@property.cpp"] = { fg = col.struct_field },
    ["@field.c"] = { fg = col.struct_field },
    ["@field.cpp"] = { fg = col.struct_field },
    ["@lsp.type.property.c"] = { fg = col.struct_field },
    ["@lsp.type.property.cpp"] = { fg = col.struct_field },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
