-- waksTheme/lua/waksTheme/theme/editor.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
    local col = colors.variants[variant] or colors.variants.default

    local highlights = {
        -- ===== CRITICAL: These MUST be here =====
        Normal = { fg = col.foreground, bg = col.background },
        NormalFloat = { fg = col.foreground, bg = col.float_bg },
        FloatBorder = { fg = col.comment, bg = col.float_bg },
        FloatTitle = { fg = col.cyan, bg = col.float_bg, bold = true },
        Comment = { fg = col.comment, italic = false },

        -- Editor UI
        ColorColumn = { bg = col.cursor_line },
        CursorLine = { bg = col.cursor_line },
        CursorColumn = { bg = col.cursor_line },
        LineNr = { fg = col.line_number },
        CursorLineNr = { fg = col.yellow },
        SignColumn = { fg = col.comment },
        Folded = { fg = col.cyan, bg = col.float_bg },
        FoldColumn = { fg = col.comment },

        -- Visual mode
        Visual = { bg = col.visual_bg },
        VisualNOS = { bg = col.visual_bg },

        -- Search
        Search = { bg = col.yellow, fg = col.background },
        IncSearch = { bg = col.orange, fg = col.background },
        CurSearch = { bg = col.red, fg = col.background },

        -- Menu and status (CRITICAL FOR COMPLETION)
        Pmenu = { bg = col.float_bg, fg = col.foreground },
        PmenuSel = { bg = col.selection, fg = col.foreground, bold = true },
        PmenuSbar = { bg = col.float_bg },
        PmenuThumb = { bg = col.selection },
        PmenuKind = { bg = col.float_bg, fg = col.cyan },
        PmenuKindSel = { bg = col.selection, fg = col.cyan, bold = true },
        PmenuExtra = { bg = col.float_bg, fg = col.comment },
        PmenuExtraSel = { bg = col.selection, fg = col.comment },

        StatusLine = { fg = col.foreground, bg = col.float_bg },
        StatusLineNC = { fg = col.comment, bg = col.float_bg },

        -- Tabline
        TabLine = { fg = col.comment, bg = col.float_bg },
        TabLineFill = { bg = col.float_bg },
        TabLineSel = { fg = col.foreground, bg = col.selection },

        -- Others
        MatchParen = { fg = col.orange, bg = col.cursor_line, bold = true },
        NonText = { fg = col.comment },
        Whitespace = { fg = col.comment },
        EndOfBuffer = { fg = col.comment },
        VertSplit = { fg = col.comment },
        WinSeparator = { fg = col.comment },

        -- Title and questions
        Title = { fg = col.cyan, bold = true },
        Question = { fg = col.green },
        MoreMsg = { fg = col.green },
        ModeMsg = { fg = col.cyan },
        WarningMsg = { fg = col.yellow },
        ErrorMsg = { fg = col.red },
    }

    for group, hl in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return M
