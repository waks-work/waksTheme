-- waksTheme/lua/waksTheme/theme/theme.lua
local colors = require("waksTheme.colors")

local M = {}

M.set_highlights = function(variant_name)
    local variant = variant_name or 'default'
    local col = colors.variants[variant]

    -- Clear existing highlights
    vim.cmd('highlight clear')
    if vim.fn.exists('syntax_on') == 1 then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'waksTheme'

    -- Load all theme modules via the new init.lua
    -- print("🎨 Loading waksTheme with variant: " .. variant)
    local theme_modules = require('waksTheme.theme')
    theme_modules.set_highlights(variant)

    -- ===== LANGUAGE-SPECIFIC HIGHLIGHTS =====
    vim.api.nvim_set_hl(0, '@variable.cpp', { fg = col.variable_cpp })
    vim.api.nvim_set_hl(0, '@variable.builtin.cpp', { fg = col.cyan })
    vim.api.nvim_set_hl(0, '@variable.rust', { fg = col.variable_rust })
    vim.api.nvim_set_hl(0, '@variable.mut.rust', { fg = col.pink })
    vim.api.nvim_set_hl(0, '@lsp.type.struct.cpp', { fg = col.struct_definition })
    vim.api.nvim_set_hl(0, '@lsp.type.class.cpp', { fg = col.struct_definition })
    vim.api.nvim_set_hl(0, '@lsp.type.struct.rust', { fg = col.struct_definition })
    vim.api.nvim_set_hl(0, '@lsp.type.enum.rust', { fg = col.purple })
    vim.api.nvim_set_hl(0, '@lsp.type.trait.rust', { fg = col.green })

    -- ===== OPERATOR VARIATIONS =====
    vim.api.nvim_set_hl(0, '@operator.dereference', { fg = col.cyan })
    vim.api.nvim_set_hl(0, '@operator.address', { fg = col.cyan })

    -- ===== LSP TYPES =====
    vim.api.nvim_set_hl(0, '@lsp.type.struct', { fg = col.struct_definition })
    vim.api.nvim_set_hl(0, '@lsp.type.class', { fg = col.struct_definition })
    vim.api.nvim_set_hl(0, '@lsp.type.interface', { fg = col.type_user })
    vim.api.nvim_set_hl(0, '@lsp.type.parameter', { fg = col.parameter })

    -- ===== INDENT BLANKLINE =====
    vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = col.tokyo_bg_light })
    vim.api.nvim_set_hl(0, 'IndentBlanklineContextChar', { fg = col.comment })
    vim.api.nvim_set_hl(0, 'IndentBlanklineContextStart', { sp = col.comment, underline = true })

    -- print("✅ waksTheme loaded successfully!")
end

return M
