-- waksTheme/lua/waksTheme/theme/syntax.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
<<<<<<< HEAD
    local col = colors.variants[variant] or colors.variants.default
    local config = require('waksTheme').config or {}

    local highlights = {
        -- Comments
        Comment = { fg = col.comment, italic = config.styles and config.styles.comments and config.styles.comments.italic },
        SpecialComment = { fg = col.comment, italic = false }, -- Same as regular comments

        -- Constants
        Constant = { fg = col.cyan },
        String = { fg = col.yellow },
        Character = { fg = col.yellow },
        Number = { fg = col.purple },
        Float = { fg = col.purple },
        Boolean = { fg = col.purple },

        -- Variables and Functions
        Identifier = { fg = col.variable_cpp },
        Function = { fg = col.function_name },

        -- Statements
        Statement = { fg = col.control_flow },
        Conditional = { fg = col.control_flow },
        Repeat = { fg = col.control_flow },
        Label = { fg = col.control_flow },
        Operator = { fg = col.pink },
        Keyword = { fg = col.pink },
        Exception = { fg = col.pink },

        -- Preprocessor
        PreProc = { fg = col.pink },
        Include = { fg = col.pink },
        Define = { fg = col.pink },
        Macro = { fg = col.pink },
        PreCondit = { fg = col.pink },

        -- Types
        Type = { fg = col.type_user },
        StorageClass = { fg = col.pink },
        Structure = { fg = col.cyan },
        Typedef = { fg = col.type_user },

        -- Special
        Special = { fg = col.orange },
        SpecialChar = { fg = col.orange },
        Tag = { fg = col.pink },
        Delimiter = { fg = col.foreground },
        Debug = { fg = col.orange },

        -- Text markup
        Underlined = { underline = true },
        Bold = { bold = true },
        Italic = { italic = false },

        -- Errors and TODOs
        Error = { fg = col.red },
        Todo = { bg = col.pink, fg = col.background, bold = true },

        -- Diff
        diffAdded = { fg = col.green },
        diffRemoved = { fg = col.red },
        diffChanged = { fg = col.blue },
        DiffAdd = { bg = col.green, blend = 20 },
        DiffChange = { bg = col.blue, blend = 20 },
        DiffDelete = { bg = col.red, blend = 20 },
        DiffText = { bg = col.blue, blend = 40 },

        -- Preprocessor directives
        PreProc = { fg = col.pink },
        Include = { fg = col.pink },
        Define = { fg = col.pink },
        Macro = { fg = col.pink },
        PreCondit = { fg = col.pink },

        -- Comments (ensure multi-line work)
        Comment = { fg = col.comment, italic = false },
        SpecialComment = { fg = col.comment, italic = false },

        -- Traditional Vim C syntax groups for preprocessor
        cPreCondit = { fg = col.pink }, -- #if, #else, #endif
        cDefine = { fg = col.pink },    -- #define
        cInclude = { fg = col.pink },   -- #include
        cPreProc = { fg = col.pink },   -- All preprocessor
    }

    for group, hl in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
=======
  local col = colors.variants[variant] or colors.variants.default
  local config = require('waksTheme').config or {}

  local highlights = {
    -- Comments
    Comment = { fg = col.comment, italic = config.styles and config.styles.comments and config.styles.comments.italic },
    SpecialComment = { fg = col.comment, italic = true }, -- Same as regular comments

    -- Constants
    Constant = { fg = col.cyan },
    String = { fg = col.yellow },
    Character = { fg = col.yellow },
    Number = { fg = col.purple },
    Float = { fg = col.purple },
    Boolean = { fg = col.purple },

    -- Variables and Functions
    Identifier = { fg = col.variable_cpp },
    Function = { fg = col.function_name },

    -- Statements
    Statement = { fg = col.control_flow },
    Conditional = { fg = col.control_flow },
    Repeat = { fg = col.control_flow },
    Label = { fg = col.control_flow },
    Operator = { fg = col.pink },
    Keyword = { fg = col.pink },
    Exception = { fg = col.pink },

    -- Preprocessor
    PreProc = { fg = col.pink },
    Include = { fg = col.pink },
    Define = { fg = col.pink },
    Macro = { fg = col.pink },
    PreCondit = { fg = col.pink },

    -- Types
    Type = { fg = col.type_user },
    StorageClass = { fg = col.pink },
    Structure = { fg = col.cyan },
    Typedef = { fg = col.type_user },

    -- Special
    Special = { fg = col.orange },
    SpecialChar = { fg = col.orange },
    Tag = { fg = col.pink },
    Delimiter = { fg = col.foreground },
    Debug = { fg = col.orange },

    -- Text markup
    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    -- Errors and TODOs
    Error = { fg = col.red },
    Todo = { bg = col.pink, fg = col.background, bold = true },

    -- Diff
    diffAdded = { fg = col.green },
    diffRemoved = { fg = col.red },
    diffChanged = { fg = col.blue },
    DiffAdd = { bg = col.green, blend = 20 },
    DiffChange = { bg = col.blue, blend = 20 },
    DiffDelete = { bg = col.red, blend = 20 },
    DiffText = { bg = col.blue, blend = 40 },

    -- Preprocessor directives
    PreProc = { fg = col.pink },
    Include = { fg = col.pink },
    Define = { fg = col.pink },
    Macro = { fg = col.pink },
    PreCondit = { fg = col.pink },

    -- Comments (ensure multi-line work)
    Comment = { fg = col.comment, italic = true },
    SpecialComment = { fg = col.comment, italic = true },

    -- Traditional Vim C syntax groups for preprocessor
    cPreCondit = { fg = col.pink }, -- #if, #else, #endif
    cDefine = { fg = col.pink },    -- #define
    cInclude = { fg = col.pink },   -- #include
    cPreProc = { fg = col.pink },   -- All preprocessor
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

return M
