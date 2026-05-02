-- waksTheme/lua/waksTheme/theme/lsp.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
<<<<<<< HEAD
    local col = colors.variants[variant] or colors.variants.default

    local highlights = {
        -- LSP references
        LspReferenceText = { bg = col.selection },
        LspReferenceRead = { bg = col.selection },
        LspReferenceWrite = { bg = col.selection },

        -- Diagnostic signs
        DiagnosticSignError = { fg = col.red },
        DiagnosticSignWarn = { fg = col.yellow },
        DiagnosticSignInfo = { fg = col.cyan },
        DiagnosticSignHint = { fg = col.foreground },

        -- Diagnostic text
        DiagnosticError = { fg = col.red },
        DiagnosticWarn = { fg = col.yellow },
        DiagnosticInfo = { fg = col.cyan },
        DiagnosticHint = { fg = col.foreground },

        -- Diagnostic virtual text
        DiagnosticVirtualTextError = { fg = col.red, bg = col.float_bg },
        DiagnosticVirtualTextWarn = { fg = col.yellow, bg = col.float_bg },
        DiagnosticVirtualTextInfo = { fg = col.cyan, bg = col.float_bg },
        DiagnosticVirtualTextHint = { fg = col.foreground, bg = col.float_bg },

        -- Diagnostic underlines
        DiagnosticUnderlineError = { undercurl = true, sp = col.red },
        DiagnosticUnderlineWarn = { undercurl = true, sp = col.yellow },
        DiagnosticUnderlineInfo = { undercurl = true, sp = col.cyan },
        DiagnosticUnderlineHint = { undercurl = true, sp = col.foreground },

        -- LSP specific
        LspSignatureActiveParameter = { bg = col.selection, bold = true },
        LspCodeLens = { fg = col.comment },
        LspInlayHint = { fg = col.comment, bg = col.cursor_line },
        LspInfoBorder = { fg = col.comment, bg = col.float_bg },

        -- ===== CRITICAL: Hover windows (this fixes the black background!) =====
        LspFloatWinNormal = { fg = col.foreground, bg = col.float_bg },
        LspFloatWinBorder = { fg = col.comment, bg = col.float_bg },

        -- Additional hover-related highlights
        NormalFloat = { fg = col.foreground, bg = col.float_bg },
        FloatBorder = { fg = col.comment, bg = col.float_bg },

        -- LSP Saga (if you're using it)
        LspSagaHoverBorder = { fg = col.comment, bg = col.float_bg },
        LspSagaSignatureHelpBorder = { fg = col.comment, bg = col.float_bg },
        LspSagaCodeActionBorder = { fg = col.comment, bg = col.float_bg },
        LspSagaDefPreviewBorder = { fg = col.comment, bg = col.float_bg },
        LspSagaRenameBorder = { fg = col.comment, bg = col.float_bg },

        -- Semantic tokens (helps with Rust syntax)
        ['@lsp.type.comment'] = { link = 'Comment' },
        ['@lsp.type.namespace'] = { fg = col.cyan },
        ['@lsp.type.type'] = { fg = col.type_user },
        ['@lsp.type.class'] = { fg = col.struct_definition },
        ['@lsp.type.enum'] = { fg = col.purple },
        ['@lsp.type.interface'] = { fg = col.type_user },
        ['@lsp.type.struct'] = { fg = col.struct_definition },
        ['@lsp.type.parameter'] = { fg = col.parameter },
        ['@lsp.type.variable'] = { fg = col.variable_cpp },
        ['@lsp.type.property'] = { fg = col.struct_field },
        ['@lsp.type.enumMember'] = { fg = col.purple },
        ['@lsp.type.function'] = { fg = col.function_name },
        ['@lsp.type.method'] = { fg = col.class_method },
        ['@lsp.type.macro'] = { fg = col.pink },
        ['@lsp.type.decorator'] = { fg = col.pink },

        -- Rust-specific semantic tokens
        ['@lsp.type.lifetime.rust'] = { fg = col.orange },
        ['@lsp.type.selfKeyword.rust'] = { fg = col.pink },
        ['@lsp.mod.mutable.rust'] = { fg = col.pink },
        ['@lsp.typemod.variable.mutable.rust'] = { fg = col.pink },
    }

    for group, hl in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
=======
  local col = colors.variants[variant] or colors.variants.default

  local highlights = {
    -- LSP references
    LspReferenceText = { bg = col.selection },
    LspReferenceRead = { bg = col.selection },
    LspReferenceWrite = { bg = col.selection },

    -- Diagnostic signs
    DiagnosticSignError = { fg = col.red },
    DiagnosticSignWarn = { fg = col.yellow },
    DiagnosticSignInfo = { fg = col.cyan },
    DiagnosticSignHint = { fg = col.foreground },

    -- Diagnostic text
    DiagnosticError = { fg = col.red },
    DiagnosticWarn = { fg = col.yellow },
    DiagnosticInfo = { fg = col.cyan },
    DiagnosticHint = { fg = col.foreground },

    -- Diagnostic virtual text
    DiagnosticVirtualTextError = { fg = col.red, bg = col.float_bg },
    DiagnosticVirtualTextWarn = { fg = col.yellow, bg = col.float_bg },
    DiagnosticVirtualTextInfo = { fg = col.cyan, bg = col.float_bg },
    DiagnosticVirtualTextHint = { fg = col.foreground, bg = col.float_bg },

    -- Diagnostic underlines
    DiagnosticUnderlineError = { undercurl = true, sp = col.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = col.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = col.cyan },
    DiagnosticUnderlineHint = { undercurl = true, sp = col.foreground },

    -- LSP specific
    LspSignatureActiveParameter = { bg = col.selection, bold = true },
    LspCodeLens = { fg = col.comment },
    LspInlayHint = { fg = col.comment, bg = col.cursor_line },
    LspInfoBorder = { fg = col.comment, bg = col.float_bg },

    -- ===== CRITICAL: Hover windows (this fixes the black background!) =====
    LspFloatWinNormal = { fg = col.foreground, bg = col.float_bg },
    LspFloatWinBorder = { fg = col.comment, bg = col.float_bg },

    -- Additional hover-related highlights
    NormalFloat = { fg = col.foreground, bg = col.float_bg },
    FloatBorder = { fg = col.comment, bg = col.float_bg },

    -- LSP Saga (if you're using it)
    LspSagaHoverBorder = { fg = col.comment, bg = col.float_bg },
    LspSagaSignatureHelpBorder = { fg = col.comment, bg = col.float_bg },
    LspSagaCodeActionBorder = { fg = col.comment, bg = col.float_bg },
    LspSagaDefPreviewBorder = { fg = col.comment, bg = col.float_bg },
    LspSagaRenameBorder = { fg = col.comment, bg = col.float_bg },

    -- Semantic tokens (helps with Rust syntax)
    ['@lsp.type.comment'] = { link = 'Comment' },
    ['@lsp.type.namespace'] = { fg = col.cyan },
    ['@lsp.type.type'] = { fg = col.type_user },
    ['@lsp.type.class'] = { fg = col.struct_definition },
    ['@lsp.type.enum'] = { fg = col.purple },
    ['@lsp.type.interface'] = { fg = col.type_user },
    ['@lsp.type.struct'] = { fg = col.struct_definition },
    ['@lsp.type.parameter'] = { fg = col.parameter },
    ['@lsp.type.variable'] = { fg = col.variable_cpp },
    ['@lsp.type.property'] = { fg = col.struct_field },
    ['@lsp.type.enumMember'] = { fg = col.purple },
    ['@lsp.type.function'] = { fg = col.function_name },
    ['@lsp.type.method'] = { fg = col.class_method },
    ['@lsp.type.macro'] = { fg = col.pink },
    ['@lsp.type.decorator'] = { fg = col.pink },

    -- Rust-specific semantic tokens
    ['@lsp.type.lifetime.rust'] = { fg = col.orange },
    ['@lsp.type.selfKeyword.rust'] = { fg = col.pink },
    ['@lsp.mod.mutable.rust'] = { fg = col.pink },
    ['@lsp.typemod.variable.mutable.rust'] = { fg = col.pink },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

return M
