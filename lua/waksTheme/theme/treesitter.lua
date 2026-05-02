-- waksTheme/lua/waksTheme/theme/treesitter.lua
local colors = require('waksTheme.colors')

local M = {}

M.set_highlights = function(variant)
<<<<<<< HEAD
    local col = colors.variants[variant] or colors.variants.default

    local highlights = {
        -- ===== CORE TREESITTER HIGHLIGHTS =====

        -- Basic nodes (common across languages)
        -- a
        ["@annotation"] = { fg = col.pink },
        ["@attribute"] = { fg = col.cyan },

        -- b
        ["@boolean"] = { fg = col.purple },

        -- c
        ["@character"] = { fg = col.yellow },
        ["@character.special"] = { fg = col.orange },
        ["@comment"] = { fg = col.comment, italic = false },
        ["@comment.documentation"] = { fg = col.comment, italic = false },
        ["@conditional"] = { fg = col.control_flow },
        ["@constant"] = { fg = col.cyan },
        ["@constant.builtin"] = { fg = col.purple },
        ["@constant.macro"] = { fg = col.pink },
        ["@constructor"] = { fg = col.struct_definition },

        -- d
        ["@debug"] = { fg = col.orange },
        ["@define"] = { fg = col.pink },

        -- e
        ["@error"] = { fg = col.red },
        ["@exception"] = { fg = col.pink },

        -- f
        ["@field"] = { fg = col.struct_field },
        ["@float"] = { fg = col.purple },
        ["@function"] = { fg = col.function_name },
        ["@function.builtin"] = { fg = col.cyan },
        ["@function.call"] = { fg = col.function_name },
        ["@function.macro"] = { fg = col.pink },
        ["@function.method"] = { fg = col.class_method },
        ["@function.method.call"] = { fg = col.class_method },

        -- i
        ["@include"] = { fg = col.pink },

        -- k
        ["@keyword"] = { fg = col.pink },
        ["@keyword.function"] = { fg = col.pink },
        ["@keyword.operator"] = { fg = col.pink },
        ["@keyword.return"] = { fg = col.pink },
        ["@keyword.conditional"] = { fg = col.control_flow },
        ["@keyword.repeat"] = { fg = col.control_flow },
        ["@keyword.directive"] = { fg = col.pink },
        ["@keyword.directive.c"] = { fg = col.pink },
        ["@keyword.directive.cpp"] = { fg = col.pink },
        ["@keyword.directive.define"] = { fg = col.pink },

        -- l
        ["@label"] = { fg = col.control_flow },

        -- m
        ["@macro"] = { fg = col.pink },
        ["@method"] = { fg = col.class_method },
        ["@method.call"] = { fg = col.class_method },

        -- n
        ["@namespace"] = { fg = col.yellow },
        ["@number"] = { fg = col.purple },

        -- o
        ["@operator"] = { fg = col.pink },

        -- p
        ["@parameter"] = { fg = col.parameter },
        ["@parameter.reference"] = { fg = col.parameter },
        ["@preproc"] = { fg = col.pink },
        ["@property"] = { fg = col.struct_field },
        ["@punctuation.bracket"] = { fg = col.comment },
        ["@punctuation.delimiter"] = { fg = col.foreground },
        ["@punctuation.special"] = { fg = col.orange },
        ["@preproc.c"] = { fg = col.pink },
        ["@preproc.cpp"] = { fg = col.pink },
        ["@preproc.if"] = { fg = col.pink },
        ["@preproc.ifdef"] = { fg = col.pink },
        ["@preproc.ifndef"] = { fg = col.pink },
        ["@preproc.else"] = { fg = col.pink },
        ["@preproc.elif"] = { fg = col.pink },
        ["@preproc.endif"] = { fg = col.pink },
        ["@preproc.define"] = { fg = col.pink },
        ["@preproc.include"] = { fg = col.pink },
        ["@punctuation.delimiter"] = { fg = col.foreground },
        ["@punctuation.delimiter.c"] = { fg = col.foreground },
        ["@punctuation.delimiter.cpp"] = { fg = col.foreground },
        ["@punctuation.bracket"] = { fg = col.comment },
        ["@punctuation.special"] = { fg = col.orange },

        -- r
        ["@repeat"] = { fg = col.control_flow },

        -- s
        ["@storageclass"] = { fg = col.pink },
        ["@string"] = { fg = col.yellow },
        ["@string.escape"] = { fg = col.pink },
        ["@string.regex"] = { fg = col.pink },
        ["@string.special"] = { fg = col.orange },
        ["@symbol"] = { fg = col.pink },

        -- t
        ["@tag"] = { fg = col.pink },
        ["@tag.attribute"] = { fg = col.yellow },
        ["@tag.delimiter"] = { fg = col.green },
        ["@text"] = { fg = col.foreground },
        ["@text.emphasis"] = { fg = col.foreground, italic = false },
        ["@text.strong"] = { fg = col.foreground, bold = true },
        ["@text.underline"] = { fg = col.foreground, underline = true },
        ["@text.literal"] = { fg = col.yellow },
        ["@text.reference"] = { fg = col.cyan },
        ["@text.title"] = { fg = col.cyan, bold = true },
        ["@text.uri"] = { fg = col.cyan, underline = true },
        ["@type"] = { fg = col.type_user },
        ["@type.builtin"] = { fg = col.type_primitive },
        ["@type.definition"] = { fg = col.struct_definition },

        -- v
        ["@variable"] = { fg = col.variable_cpp },
        ["@variable.builtin"] = { fg = col.cyan },
        ["@variable.parameter"] = { fg = col.parameter },
        ["@variable.member"] = { fg = col.struct_field },

        -- ===== C/C++ SPECIFIC =====
        ["@comment.c"] = { fg = col.comment, italic = false },
        ["@comment.cpp"] = { fg = col.comment, italic = false },
        ["@variable.c"] = { fg = col.variable_cpp },
        ["@variable.cpp"] = { fg = col.variable_cpp },
        ["@variable.builtin.cpp"] = { fg = col.cyan },
        ["@type.cpp"] = { fg = col.type_user },
        ["@type.builtin.cpp"] = { fg = col.type_primitive },
        ["@type.qualifier.cpp"] = { fg = col.pink },
        ["@storageclass.cpp"] = { fg = col.pink },

        -- C-specific keywords that might be missed
        ["@keyword.c"] = { fg = col.pink },
        ["@keyword.goto.c"] = { fg = col.control_flow },
        ["@keyword.sizeof.c"] = { fg = col.pink },

        -- ===== RUST SPECIFIC =====
        ["@variable.rust"] = { fg = col.variable_rust },
        ["@variable.mut.rust"] = { fg = col.pink },
        ["@type.rust"] = { fg = col.type_user },
        ["@type.builtin.rust"] = { fg = col.type_primitive },
        ["@type.definition.rust"] = { fg = col.struct_definition },
        ["@storageclass.rust"] = { fg = col.pink },

        -- Rust-specific keywords
        ["@keyword.rust"] = { fg = col.pink },
        ["@keyword.impl.rust"] = { fg = col.pink },
        ["@keyword.pub.rust"] = { fg = col.pink },
        ["@keyword.let.rust"] = { fg = col.pink },
        ["@keyword.trait.rust"] = { fg = col.pink },
        ["@keyword.async.rust"] = { fg = col.pink },
        ["@keyword.fn.rust"] = { fg = col.pink },
        ["@keyword.self.rust"] = { fg = col.cyan },
        ["@keyword.use.rust"] = { fg = col.pink },
        ["@keyword.mod.rust"] = { fg = col.pink },
        ["@keyword.struct.rust"] = { fg = col.pink },
        ["@keyword.enum.rust"] = { fg = col.pink },
        ["@keyword.match.rust"] = { fg = col.control_flow },

        -- Rust-specific types
        ["@lsp.type.struct.rust"] = { fg = col.struct_definition },
        ["@lsp.type.enum.rust"] = { fg = col.purple },
        ["@lsp.type.trait.rust"] = { fg = col.green },
        ["@lsp.type.interface.rust"] = { fg = col.type_user },
        ["@lsp.type.typeParameter.rust"] = { fg = col.type_user },

        -- ===== LSP INTEGRATION =====
        ["@lsp.type.class"] = { fg = col.struct_definition },
        ["@lsp.type.decorator"] = { fg = col.cyan },
        ["@lsp.type.enum"] = { fg = col.purple },
        ["@lsp.type.enumMember"] = { fg = col.cyan },
        ["@lsp.type.function"] = { fg = col.function_name },
        ["@lsp.type.interface"] = { fg = col.type_user },
        ["@lsp.type.macro"] = { fg = col.pink },
        ["@lsp.type.method"] = { fg = col.class_method },
        ["@lsp.type.namespace"] = { fg = col.yellow },
        ["@lsp.type.parameter"] = { fg = col.parameter },
        ["@lsp.type.property"] = { fg = col.struct_field },
        ["@lsp.type.struct"] = { fg = col.struct_definition },
        ["@lsp.type.type"] = { fg = col.type_user },
        ["@lsp.type.typeParameter"] = { fg = col.type_user },
        ["@lsp.type.variable"] = { fg = col.variable_cpp },

        -- ===== MODIFIERS =====
        ["@lsp.mod.readonly"] = { fg = col.comment },
        ["@lsp.mod.typeHint"] = { fg = col.type_user },
        ["@lsp.mod.builtin"] = { fg = col.cyan },
        ["@lsp.typemod.function.defaultLibrary"] = { fg = col.cyan },
        ["@lsp.typemod.variable.defaultLibrary"] = { fg = col.cyan },
        -- Add to the end of highlights table in treesitter.lua:

        -- ===== FALLBACKS FOR MISSING C/C++ CAPTURES =====
        -- These catch common C/C++ patterns that might not have specific captures
        ["@keyword"] = { fg = col.pink },
        ["@type"] = { fg = col.type_user },
        ["@type.builtin"] = { fg = col.type_primitive },
        ["@storageclass"] = { fg = col.pink },
        ["@variable"] = { fg = col.variable_cpp },
        ["@function"] = { fg = col.function_name },
        ["@function.call"] = { fg = col.function_name },
        ["@parameter"] = { fg = col.parameter },

        -- Generic operators that should catch most cases
        ["@operator"] = { fg = col.pink },
    }

    for group, hl in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
=======
  local col = colors.variants[variant] or colors.variants.default

  local highlights = {
    -- ===== CORE TREESITTER HIGHLIGHTS =====

    -- Basic nodes (common across languages)
    -- a
    ["@annotation"] = { fg = col.pink },
    ["@attribute"] = { fg = col.cyan },

    -- b
    ["@boolean"] = { fg = col.purple },

    -- c
    ["@character"] = { fg = col.yellow },
    ["@character.special"] = { fg = col.orange },
    ["@comment"] = { fg = col.comment, italic = true },
    ["@comment.documentation"] = { fg = col.comment, italic = true },
    ["@conditional"] = { fg = col.control_flow },
    ["@constant"] = { fg = col.cyan },
    ["@constant.builtin"] = { fg = col.purple },
    ["@constant.macro"] = { fg = col.pink },
    ["@constructor"] = { fg = col.struct_definition },

    -- d
    ["@debug"] = { fg = col.orange },
    ["@define"] = { fg = col.pink },

    -- e
    ["@error"] = { fg = col.red },
    ["@exception"] = { fg = col.pink },

    -- f
    ["@field"] = { fg = col.struct_field },
    ["@float"] = { fg = col.purple },
    ["@function"] = { fg = col.function_name },
    ["@function.builtin"] = { fg = col.cyan },
    ["@function.call"] = { fg = col.function_name },
    ["@function.macro"] = { fg = col.pink },
    ["@function.method"] = { fg = col.class_method },
    ["@function.method.call"] = { fg = col.class_method },

    -- i
    ["@include"] = { fg = col.pink },

    -- k
    ["@keyword"] = { fg = col.pink },
    ["@keyword.function"] = { fg = col.pink },
    ["@keyword.operator"] = { fg = col.pink },
    ["@keyword.return"] = { fg = col.pink },
    ["@keyword.conditional"] = { fg = col.control_flow },
    ["@keyword.repeat"] = { fg = col.control_flow },
    ["@keyword.directive"] = { fg = col.pink },
    ["@keyword.directive.c"] = { fg = col.pink },
    ["@keyword.directive.cpp"] = { fg = col.pink },
    ["@keyword.directive.define"] = { fg = col.pink },

    -- l
    ["@label"] = { fg = col.control_flow },

    -- m
    ["@macro"] = { fg = col.pink },
    ["@method"] = { fg = col.class_method },
    ["@method.call"] = { fg = col.class_method },

    -- n
    ["@namespace"] = { fg = col.yellow },
    ["@number"] = { fg = col.purple },

    -- o
    ["@operator"] = { fg = col.pink },

    -- p
    ["@parameter"] = { fg = col.parameter },
    ["@parameter.reference"] = { fg = col.parameter },
    ["@preproc"] = { fg = col.pink },
    ["@property"] = { fg = col.struct_field },
    ["@punctuation.bracket"] = { fg = col.comment },
    ["@punctuation.delimiter"] = { fg = col.foreground },
    ["@punctuation.special"] = { fg = col.orange },
    ["@preproc.c"] = { fg = col.pink },
    ["@preproc.cpp"] = { fg = col.pink },
    ["@preproc.if"] = { fg = col.pink },
    ["@preproc.ifdef"] = { fg = col.pink },
    ["@preproc.ifndef"] = { fg = col.pink },
    ["@preproc.else"] = { fg = col.pink },
    ["@preproc.elif"] = { fg = col.pink },
    ["@preproc.endif"] = { fg = col.pink },
    ["@preproc.define"] = { fg = col.pink },
    ["@preproc.include"] = { fg = col.pink },
    ["@punctuation.delimiter"] = { fg = col.foreground },
    ["@punctuation.delimiter.c"] = { fg = col.foreground },
    ["@punctuation.delimiter.cpp"] = { fg = col.foreground },
    ["@punctuation.bracket"] = { fg = col.comment },
    ["@punctuation.special"] = { fg = col.orange },

    -- r
    ["@repeat"] = { fg = col.control_flow },

    -- s
    ["@storageclass"] = { fg = col.pink },
    ["@string"] = { fg = col.yellow },
    ["@string.escape"] = { fg = col.pink },
    ["@string.regex"] = { fg = col.pink },
    ["@string.special"] = { fg = col.orange },
    ["@symbol"] = { fg = col.pink },

    -- t
    ["@tag"] = { fg = col.pink },
    ["@tag.attribute"] = { fg = col.yellow },
    ["@tag.delimiter"] = { fg = col.green },
    ["@text"] = { fg = col.foreground },
    ["@text.emphasis"] = { fg = col.foreground, italic = true },
    ["@text.strong"] = { fg = col.foreground, bold = true },
    ["@text.underline"] = { fg = col.foreground, underline = true },
    ["@text.literal"] = { fg = col.yellow },
    ["@text.reference"] = { fg = col.cyan },
    ["@text.title"] = { fg = col.cyan, bold = true },
    ["@text.uri"] = { fg = col.cyan, underline = true },
    ["@type"] = { fg = col.type_user },
    ["@type.builtin"] = { fg = col.type_primitive },
    ["@type.definition"] = { fg = col.struct_definition },

    -- v
    ["@variable"] = { fg = col.variable_cpp },
    ["@variable.builtin"] = { fg = col.cyan },
    ["@variable.parameter"] = { fg = col.parameter },
    ["@variable.member"] = { fg = col.struct_field },

    -- ===== C/C++ SPECIFIC =====
    ["@comment.c"] = { fg = col.comment, italic = true },
    ["@comment.cpp"] = { fg = col.comment, italic = true },
    ["@variable.c"] = { fg = col.variable_cpp },
    ["@variable.cpp"] = { fg = col.variable_cpp },
    ["@variable.builtin.cpp"] = { fg = col.cyan },
    ["@type.cpp"] = { fg = col.type_user },
    ["@type.builtin.cpp"] = { fg = col.type_primitive },
    ["@type.qualifier.cpp"] = { fg = col.pink },
    ["@storageclass.cpp"] = { fg = col.pink },

    -- C-specific keywords that might be missed
    ["@keyword.c"] = { fg = col.pink },
    ["@keyword.goto.c"] = { fg = col.control_flow },
    ["@keyword.sizeof.c"] = { fg = col.pink },

    -- ===== RUST SPECIFIC =====
    ["@variable.rust"] = { fg = col.variable_rust },
    ["@variable.mut.rust"] = { fg = col.pink },
    ["@type.rust"] = { fg = col.type_user },
    ["@type.builtin.rust"] = { fg = col.type_primitive },
    ["@type.definition.rust"] = { fg = col.struct_definition },
    ["@storageclass.rust"] = { fg = col.pink },

    -- Rust-specific keywords
    ["@keyword.rust"] = { fg = col.pink },
    ["@keyword.impl.rust"] = { fg = col.pink },
    ["@keyword.pub.rust"] = { fg = col.pink },
    ["@keyword.let.rust"] = { fg = col.pink },
    ["@keyword.trait.rust"] = { fg = col.pink },
    ["@keyword.async.rust"] = { fg = col.pink },
    ["@keyword.fn.rust"] = { fg = col.pink },
    ["@keyword.self.rust"] = { fg = col.cyan },
    ["@keyword.use.rust"] = { fg = col.pink },
    ["@keyword.mod.rust"] = { fg = col.pink },
    ["@keyword.struct.rust"] = { fg = col.pink },
    ["@keyword.enum.rust"] = { fg = col.pink },
    ["@keyword.match.rust"] = { fg = col.control_flow },

    -- Rust-specific types
    ["@lsp.type.struct.rust"] = { fg = col.struct_definition },
    ["@lsp.type.enum.rust"] = { fg = col.purple },
    ["@lsp.type.trait.rust"] = { fg = col.green },
    ["@lsp.type.interface.rust"] = { fg = col.type_user },
    ["@lsp.type.typeParameter.rust"] = { fg = col.type_user },

    -- ===== LSP INTEGRATION =====
    ["@lsp.type.class"] = { fg = col.struct_definition },
    ["@lsp.type.decorator"] = { fg = col.cyan },
    ["@lsp.type.enum"] = { fg = col.purple },
    ["@lsp.type.enumMember"] = { fg = col.cyan },
    ["@lsp.type.function"] = { fg = col.function_name },
    ["@lsp.type.interface"] = { fg = col.type_user },
    ["@lsp.type.macro"] = { fg = col.pink },
    ["@lsp.type.method"] = { fg = col.class_method },
    ["@lsp.type.namespace"] = { fg = col.yellow },
    ["@lsp.type.parameter"] = { fg = col.parameter },
    ["@lsp.type.property"] = { fg = col.struct_field },
    ["@lsp.type.struct"] = { fg = col.struct_definition },
    ["@lsp.type.type"] = { fg = col.type_user },
    ["@lsp.type.typeParameter"] = { fg = col.type_user },
    ["@lsp.type.variable"] = { fg = col.variable_cpp },

    -- ===== MODIFIERS =====
    ["@lsp.mod.readonly"] = { fg = col.comment },
    ["@lsp.mod.typeHint"] = { fg = col.type_user },
    ["@lsp.mod.builtin"] = { fg = col.cyan },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = col.cyan },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = col.cyan },
    -- Add to the end of highlights table in treesitter.lua:

    -- ===== FALLBACKS FOR MISSING C/C++ CAPTURES =====
    -- These catch common C/C++ patterns that might not have specific captures
    ["@keyword"] = { fg = col.pink },
    ["@type"] = { fg = col.type_user },
    ["@type.builtin"] = { fg = col.type_primitive },
    ["@storageclass"] = { fg = col.pink },
    ["@variable"] = { fg = col.variable_cpp },
    ["@function"] = { fg = col.function_name },
    ["@function.call"] = { fg = col.function_name },
    ["@parameter"] = { fg = col.parameter },

    -- Generic operators that should catch most cases
    ["@operator"] = { fg = col.pink },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

return M
