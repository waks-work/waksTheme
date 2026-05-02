-- waksTheme/lua/waksTheme/setup.lua
local colors = require('waksTheme.colors.colors')

local M = {}

M.setup = function(opts)
  local options = vim.tbl_deep_extend('force', {
    variant = 'default',
    transparent_background = false,
    styles = {
      comments = { italic = true },
      keywords = { italic = false },
      functions = {},
      variables = {},
    }
  }, opts or {})

  -- Store config globally in waksTheme module
  local waksTheme = require('waksTheme')
  waksTheme.config = options

  -- Add colors to config
  options.colors = colors.variants[options.variant] or colors.variants.default

  -- Apply theme FIRST
  require('waksTheme.theme.theme').set_highlights(options.variant)

  -- THEN apply transparency ONLY to specific highlights (if requested)
  if options.transparent_background then
    -- Use vim.schedule to ensure this runs after all highlights are set
    vim.schedule(function()
      -- Make ONLY the main editor background transparent
      vim.api.nvim_set_hl(0, 'Normal', {
        fg = options.colors.foreground,
        bg = 'NONE'
      })
      vim.api.nvim_set_hl(0, 'NormalNC', {
        fg = options.colors.foreground,
        bg = 'NONE'
      })
      vim.api.nvim_set_hl(0, 'SignColumn', {
        fg = options.colors.comment,
        bg = 'NONE'
      })
      vim.api.nvim_set_hl(0, 'LineNr', {
        fg = options.colors.line_number,
        bg = 'NONE'
      })
      vim.api.nvim_set_hl(0, 'CursorLineNr', {
        fg = options.colors.yellow,
        bg = 'NONE'
      })
      vim.api.nvim_set_hl(0, 'CursorLine', {
        bg = 'NONE'
      })
      vim.api.nvim_set_hl(0, 'StatusLine', {
        fg = options.colors.foreground,
        bg = 'NONE'
      })
      vim.api.nvim_set_hl(0, 'StatusLineNC', {
        fg = options.colors.comment,
        bg = 'NONE'
      })

      -- DO NOT make these transparent - keep plugin backgrounds!
      -- Telescope, Which-Key, CMP, Snacks keep their themed backgrounds

      print("🔍 Transparent background enabled (editor only)")
    end)
  end

  -- Set terminal colors
  vim.g.terminal_color_0 = options.colors.background
  vim.g.terminal_color_1 = options.colors.red
  vim.g.terminal_color_2 = options.colors.green
  vim.g.terminal_color_3 = options.colors.yellow
  vim.g.terminal_color_4 = options.colors.cyan
  vim.g.terminal_color_5 = options.colors.purple
  vim.g.terminal_color_6 = options.colors.cyan
  vim.g.terminal_color_7 = options.colors.foreground
  vim.g.terminal_color_8 = options.colors.comment
  vim.g.terminal_color_9 = options.colors.red
  vim.g.terminal_color_10 = options.colors.green
  vim.g.terminal_color_11 = options.colors.yellow
  vim.g.terminal_color_12 = options.colors.cyan
  vim.g.terminal_color_13 = options.colors.purple
  vim.g.terminal_color_14 = options.colors.cyan
  vim.g.terminal_color_15 = options.colors.foreground

  -- At the end of setup.lua, after terminal colors
  vim.api.nvim_create_autocmd("BufWinEnter", {
    callback = function()
      -- Ensure floating windows always use theme colors
      if vim.api.nvim_win_get_config(0).relative ~= "" then
        vim.api.nvim_win_set_option(0, 'winhighlight', 'Normal:NormalFloat,FloatBorder:FloatBorder')
      end
    end,
  })

  return options
end

return M
