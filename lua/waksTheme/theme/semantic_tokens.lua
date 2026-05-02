-- waksTheme/lua/waksTheme/theme/semantic_tokens.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
<<<<<<< HEAD
    local col = colors.variants[variant] or colors.variants.default

    -- Semantic token highlights (for LSP)
    local highlights = {
        -- ===== CRITICAL: C/C++ IDENTIFIERS =====
        ["@lsp.type.variable.c"] = { fg = col.variable_cpp },
        ["@lsp.type.variable.cpp"] = { fg = col.variable_cpp },
        ["@variable.c"] = { fg = col.variable_cpp },
        ["@variable.cpp"] = { fg = col.variable_cpp },

        -- Namespace
        ["@lsp.type.namespace"] = { fg = col.yellow },
        ["@lsp.type.namespace.cpp"] = { fg = col.yellow },

        -- Type
        ["@lsp.type.type"] = { fg = col.type_user },
        ["@lsp.type.type.rust"] = { fg = col.type_user },
        ["@lsp.type.type.cpp"] = { fg = col.type_user },
        ["@lsp.type.type.c"] = { fg = col.type_user },

        -- Class
        ["@lsp.type.class"] = { fg = col.struct_definition },
        ["@lsp.type.class.rust"] = { fg = col.struct_definition },
        ["@lsp.type.class.cpp"] = { fg = col.struct_definition },
        ["@lsp.type.class.c"] = { fg = col.struct_definition },

        -- Enum
        ["@lsp.type.enum"] = { fg = col.purple },
        ["@lsp.type.enum.rust"] = { fg = col.purple },
        ["@lsp.type.enum.c"] = { fg = col.purple },
        ["@lsp.type.enum.cpp"] = { fg = col.purple },

        -- Interface
        ["@lsp.type.interface"] = { fg = col.type_user },
        ["@lsp.type.interface.rust"] = { fg = col.green }, -- Rust traits

        -- Struct
        ["@lsp.type.struct"] = { fg = col.struct_definition },
        ["@lsp.type.struct.rust"] = { fg = col.struct_definition },
        ["@lsp.type.struct.cpp"] = { fg = col.struct_definition },
        ["@lsp.type.struct.c"] = { fg = col.struct_definition },

        -- Type Parameter
        ["@lsp.type.typeParameter"] = { fg = col.type_user },
        ["@lsp.type.typeParameter.rust"] = { fg = col.type_user },
        ["@lsp.type.typeParameter.cpp"] = { fg = col.type_user },

        -- Parameter
        ["@lsp.type.parameter"] = { fg = col.parameter },
        ["@lsp.type.parameter.rust"] = { fg = col.parameter },
        ["@lsp.type.parameter.cpp"] = { fg = col.parameter },
        ["@lsp.type.parameter.c"] = { fg = col.parameter },

        -- Variable (most important for C!)
        ["@lsp.type.variable"] = { fg = col.variable_cpp },
        ["@lsp.type.variable.rust"] = { fg = col.variable_rust },
        ["@lsp.type.variable.cpp"] = { fg = col.variable_cpp },
        ["@lsp.type.variable.c"] = { fg = col.variable_cpp },

        -- Property
        ["@lsp.type.property"] = { fg = col.struct_field },
        ["@lsp.type.property.c"] = { fg = col.struct_field },
        ["@lsp.type.property.cpp"] = { fg = col.struct_field },

        -- Enum Member
        ["@lsp.type.enumMember"] = { fg = col.cyan },

        -- Function
        ["@lsp.type.function"] = { fg = col.function_name },
        ["@lsp.type.function.c"] = { fg = col.function_name },
        ["@lsp.type.function.cpp"] = { fg = col.function_name },
        ["@lsp.typemod.function.defaultLibrary"] = { fg = col.cyan },

        -- Method
        ["@lsp.type.method"] = { fg = col.class_method },
        ["@lsp.type.method.c"] = { fg = col.class_method },
        ["@lsp.type.method.cpp"] = { fg = col.class_method },
        ["@lsp.typemod.method.defaultLibrary"] = { fg = col.cyan },

        -- Macro
        ["@lsp.type.macro"] = { fg = col.pink },
        ["@lsp.type.macro.rust"] = { fg = col.pink },
        ["@lsp.type.macro.c"] = { fg = col.pink },
        ["@lsp.type.macro.cpp"] = { fg = col.pink },

        -- Keyword
        ["@lsp.type.keyword"] = { fg = col.pink },

        -- Modifier
        ["@lsp.mod.readonly"] = { fg = col.comment },
        ["@lsp.mod.mut"] = { fg = col.pink },
        ["@lsp.mod.unsafe"] = { fg = col.red },
        ["@lsp.mod.static"] = { fg = col.pink },
        ["@lsp.mod.const"] = { fg = col.pink },

        -- Comment
        ["@lsp.type.comment"] = { fg = col.comment, italic = false },
        ["@lsp.type.comment.c"] = { fg = col.comment, italic = false },
        ["@lsp.type.comment.cpp"] = { fg = col.comment, italic = false },
    }

    for group, hl in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
=======
  local col = colors.variants[variant] or colors.variants.default

  -- Semantic token highlights (for LSP)
  local highlights = {
    -- ===== CRITICAL: C/C++ IDENTIFIERS =====
    ["@lsp.type.variable.c"] = { fg = col.variable_cpp },
    ["@lsp.type.variable.cpp"] = { fg = col.variable_cpp },
    ["@variable.c"] = { fg = col.variable_cpp },
    ["@variable.cpp"] = { fg = col.variable_cpp },

    -- Namespace
    ["@lsp.type.namespace"] = { fg = col.yellow },
    ["@lsp.type.namespace.cpp"] = { fg = col.yellow },

    -- Type
    ["@lsp.type.type"] = { fg = col.type_user },
    ["@lsp.type.type.rust"] = { fg = col.type_user },
    ["@lsp.type.type.cpp"] = { fg = col.type_user },
    ["@lsp.type.type.c"] = { fg = col.type_user },

    -- Class
    ["@lsp.type.class"] = { fg = col.struct_definition },
    ["@lsp.type.class.rust"] = { fg = col.struct_definition },
    ["@lsp.type.class.cpp"] = { fg = col.struct_definition },
    ["@lsp.type.class.c"] = { fg = col.struct_definition },

    -- Enum
    ["@lsp.type.enum"] = { fg = col.purple },
    ["@lsp.type.enum.rust"] = { fg = col.purple },
    ["@lsp.type.enum.c"] = { fg = col.purple },
    ["@lsp.type.enum.cpp"] = { fg = col.purple },

    -- Interface
    ["@lsp.type.interface"] = { fg = col.type_user },
    ["@lsp.type.interface.rust"] = { fg = col.green }, -- Rust traits

    -- Struct
    ["@lsp.type.struct"] = { fg = col.struct_definition },
    ["@lsp.type.struct.rust"] = { fg = col.struct_definition },
    ["@lsp.type.struct.cpp"] = { fg = col.struct_definition },
    ["@lsp.type.struct.c"] = { fg = col.struct_definition },

    -- Type Parameter
    ["@lsp.type.typeParameter"] = { fg = col.type_user },
    ["@lsp.type.typeParameter.rust"] = { fg = col.type_user },
    ["@lsp.type.typeParameter.cpp"] = { fg = col.type_user },

    -- Parameter
    ["@lsp.type.parameter"] = { fg = col.parameter },
    ["@lsp.type.parameter.rust"] = { fg = col.parameter },
    ["@lsp.type.parameter.cpp"] = { fg = col.parameter },
    ["@lsp.type.parameter.c"] = { fg = col.parameter },

    -- Variable (most important for C!)
    ["@lsp.type.variable"] = { fg = col.variable_cpp },
    ["@lsp.type.variable.rust"] = { fg = col.variable_rust },
    ["@lsp.type.variable.cpp"] = { fg = col.variable_cpp },
    ["@lsp.type.variable.c"] = { fg = col.variable_cpp },

    -- Property
    ["@lsp.type.property"] = { fg = col.struct_field },
    ["@lsp.type.property.c"] = { fg = col.struct_field },
    ["@lsp.type.property.cpp"] = { fg = col.struct_field },

    -- Enum Member
    ["@lsp.type.enumMember"] = { fg = col.cyan },

    -- Function
    ["@lsp.type.function"] = { fg = col.function_name },
    ["@lsp.type.function.c"] = { fg = col.function_name },
    ["@lsp.type.function.cpp"] = { fg = col.function_name },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = col.cyan },

    -- Method
    ["@lsp.type.method"] = { fg = col.class_method },
    ["@lsp.type.method.c"] = { fg = col.class_method },
    ["@lsp.type.method.cpp"] = { fg = col.class_method },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = col.cyan },

    -- Macro
    ["@lsp.type.macro"] = { fg = col.pink },
    ["@lsp.type.macro.rust"] = { fg = col.pink },
    ["@lsp.type.macro.c"] = { fg = col.pink },
    ["@lsp.type.macro.cpp"] = { fg = col.pink },

    -- Keyword
    ["@lsp.type.keyword"] = { fg = col.pink },

    -- Modifier
    ["@lsp.mod.readonly"] = { fg = col.comment },
    ["@lsp.mod.mut"] = { fg = col.pink },
    ["@lsp.mod.unsafe"] = { fg = col.red },
    ["@lsp.mod.static"] = { fg = col.pink },
    ["@lsp.mod.const"] = { fg = col.pink },

    -- Comment
    ["@lsp.type.comment"] = { fg = col.comment, italic = true },
    ["@lsp.type.comment.c"] = { fg = col.comment, italic = true },
    ["@lsp.type.comment.cpp"] = { fg = col.comment, italic = true },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

return M
