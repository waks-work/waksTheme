-- waksTheme/lua/waksTheme/theme/render_markdown.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
  local col = colors.variants[variant] or colors.variants.default

  local highlights = {
    -- Markdown headings - Use blend instead of invalid hex colors
    RenderMarkdownH1Bg = { fg = col.purple, bold = true },
    RenderMarkdownH1 = { fg = col.purple, bold = true },
    RenderMarkdownH2Bg = { fg = col.cyan, bold = true },
    RenderMarkdownH2 = { fg = col.cyan, bold = true },
    RenderMarkdownH3Bg = { fg = col.green, bold = true },
    RenderMarkdownH3 = { fg = col.green, bold = true },
    RenderMarkdownH4Bg = { fg = col.yellow },
    RenderMarkdownH4 = { fg = col.yellow },
    RenderMarkdownH5Bg = { fg = col.orange },
    RenderMarkdownH5 = { fg = col.orange },
    RenderMarkdownH6Bg = { fg = col.red },
    RenderMarkdownH6 = { fg = col.red },

    -- Code blocks
    RenderMarkdownCode = { bg = col.float_bg },
    RenderMarkdownCodeInline = { bg = col.cursor_line, fg = col.cyan },

    -- Other elements
    RenderMarkdownBullet = { fg = col.pink },
    RenderMarkdownQuote = { fg = col.comment, italic = false },
    RenderMarkdownLink = { fg = col.cyan, underline = true },
    RenderMarkdownLinkText = { fg = col.cyan },
    RenderMarkdownLinkLabel = { fg = col.purple },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
