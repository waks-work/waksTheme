-- waksTheme/lua/waksTheme/theme/c_syntax.lua
local colors = require('waksTheme.colors')

local M = {}

M.set_highlights = function(variant)
  local col = colors.variants[variant] or colors.variants.default

  -- Force Vim regex syntax for preprocessor (Tree-sitter isn't catching it)
  vim.cmd([[
    " Clear any existing preprocessor syntax
    syntax clear cPreCondit
    syntax clear cDefine
    syntax clear cInclude
    syntax clear cPreProc

    " Define preprocessor patterns explicitly
    syntax match cPreCondit "^\s*#\s*\(if\|ifdef\|ifndef\|elif\|else\|endif\)\>"
    syntax match cDefine "^\s*#\s*\(define\|undef\)\>"
    syntax match cInclude "^\s*#\s*include\>"
    syntax match cPreProc "^\s*#\s*\(pragma\|line\|error\|warning\)\>"

    " Match the # symbol itself when at line start
    syntax match cPreProcHash "^\s*#" nextgroup=cPreConditKeyword,cDefineKeyword,cIncludeKeyword skipwhite
    syntax keyword cPreConditKeyword if ifdef ifndef elif else endif contained
    syntax keyword cDefineKeyword define undef contained
    syntax keyword cIncludeKeyword include contained

    " Multi-line comments (/* ... */)
    syntax clear cComment
    syntax region cComment start="/\*" end="\*/" contains=cTodo,@Spell
    syntax match cCommentL "//.*$" contains=cTodo,@Spell
    syntax keyword cTodo contained TODO FIXME XXX NOTE HACK
  ]])

  local highlights = {
    -- Preprocessor - ALL variations
    cPreCondit = { fg = col.pink },
    cPreConditKeyword = { fg = col.pink },
    cDefine = { fg = col.pink },
    cDefineKeyword = { fg = col.pink },
    cInclude = { fg = col.pink },
    cIncludeKeyword = { fg = col.pink },
    cIncluded = { fg = col.yellow },
    cPreProc = { fg = col.pink },
    cPreProcHash = { fg = col.pink },

    -- Generic preprocessor groups
    PreProc = { fg = col.pink },
    Include = { fg = col.pink },
    Define = { fg = col.pink },
    Macro = { fg = col.pink },
    PreCondit = { fg = col.pink },

    -- Comments
    cComment = { fg = col.comment, italic = true },
    cCommentL = { fg = col.comment, italic = true },
    cCommentStart = { fg = col.comment, italic = true },
    cTodo = { fg = col.orange, bg = col.cursor_line, bold = true },
    Comment = { fg = col.comment, italic = true },

    -- Other C groups
    cType = { fg = col.type_user },
    cStorageClass = { fg = col.pink },
    cStructure = { fg = col.cyan },
    cConstant = { fg = col.cyan },
    cSpecial = { fg = col.orange },
    cFormat = { fg = col.orange },
    cStatement = { fg = col.pink },
    cLabel = { fg = col.control_flow },
    cConditional = { fg = col.control_flow },
    cRepeat = { fg = col.control_flow },
    cOperator = { fg = col.pink },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
