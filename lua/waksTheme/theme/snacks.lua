-- waksTheme/lua/waksTheme/theme/snacks.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
<<<<<<< HEAD
    local col = colors.variants[variant] or colors.variants.default

    local highlights = {
        -- Snacks dashboard
        SnacksDashboardHeader = { fg = col.purple, bg = col.background, bold = true },
        SnacksDashboardDesc = { fg = col.comment, bg = col.background },
        SnacksDashboardKey = { fg = col.cyan, bg = col.background },
        SnacksDashboardIcon = { fg = col.pink, bg = col.background },
        SnacksDashboardTitle = { fg = col.cyan, bg = col.background },
        SnacksDashboardFooter = { fg = col.comment, bg = col.background },
        SnacksDashboardNormal = { fg = col.foreground, bg = col.background },
        SnacksDashboardSpecial = { fg = col.purple, bg = col.background },

        -- Snacks notifications (use popup_bg for floating windows)
        SnacksNotifierInfo = { fg = col.cyan, bg = col.popup_bg },
        SnacksNotifierWarn = { fg = col.yellow, bg = col.popup_bg },
        SnacksNotifierError = { fg = col.red, bg = col.popup_bg },
        SnacksNotifierDebug = { fg = col.comment, bg = col.popup_bg },
        SnacksNotifierTrace = { fg = col.purple, bg = col.popup_bg },

        -- Snacks notification body
        SnacksNotifierInfoBody = { fg = col.foreground, bg = col.popup_bg },
        SnacksNotifierWarnBody = { fg = col.foreground, bg = col.popup_bg },
        SnacksNotifierErrorBody = { fg = col.foreground, bg = col.popup_bg },
        SnacksNotifierDebugBody = { fg = col.foreground, bg = col.popup_bg },
        SnacksNotifierTraceBody = { fg = col.foreground, bg = col.popup_bg },

        -- Snacks borders
        SnacksNotifierBorderInfo = { fg = col.cyan, bg = col.popup_bg },
        SnacksNotifierBorderWarn = { fg = col.yellow, bg = col.popup_bg },
        SnacksNotifierBorderError = { fg = col.red, bg = col.popup_bg },
        SnacksNotifierBorderDebug = { fg = col.comment, bg = col.popup_bg },
        SnacksNotifierBorderTrace = { fg = col.purple, bg = col.popup_bg },

        -- Snacks input
        SnacksInputBorder = { fg = col.comment, bg = col.float_bg },
        SnacksInputTitle = { fg = col.cyan, bg = col.float_bg },
        SnacksInputNormal = { fg = col.foreground, bg = col.float_bg },
    }

    for group, hl in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
=======
  local col = colors.variants[variant] or colors.variants.default

  local highlights = {
    -- Snacks dashboard
    SnacksDashboardHeader = { fg = col.purple, bg = col.background, bold = true },
    SnacksDashboardDesc = { fg = col.comment, bg = col.background },
    SnacksDashboardKey = { fg = col.cyan, bg = col.background },
    SnacksDashboardIcon = { fg = col.pink, bg = col.background },
    SnacksDashboardTitle = { fg = col.cyan, bg = col.background },
    SnacksDashboardFooter = { fg = col.comment, bg = col.background },
    SnacksDashboardNormal = { fg = col.foreground, bg = col.background },
    SnacksDashboardSpecial = { fg = col.purple, bg = col.background },

    -- Snacks notifications (use popup_bg for floating windows)
    SnacksNotifierInfo = { fg = col.cyan, bg = col.popup_bg },
    SnacksNotifierWarn = { fg = col.yellow, bg = col.popup_bg },
    SnacksNotifierError = { fg = col.red, bg = col.popup_bg },
    SnacksNotifierDebug = { fg = col.comment, bg = col.popup_bg },
    SnacksNotifierTrace = { fg = col.purple, bg = col.popup_bg },

    -- Snacks notification body
    SnacksNotifierInfoBody = { fg = col.foreground, bg = col.popup_bg },
    SnacksNotifierWarnBody = { fg = col.foreground, bg = col.popup_bg },
    SnacksNotifierErrorBody = { fg = col.foreground, bg = col.popup_bg },
    SnacksNotifierDebugBody = { fg = col.foreground, bg = col.popup_bg },
    SnacksNotifierTraceBody = { fg = col.foreground, bg = col.popup_bg },

    -- Snacks borders
    SnacksNotifierBorderInfo = { fg = col.cyan, bg = col.popup_bg },
    SnacksNotifierBorderWarn = { fg = col.yellow, bg = col.popup_bg },
    SnacksNotifierBorderError = { fg = col.red, bg = col.popup_bg },
    SnacksNotifierBorderDebug = { fg = col.comment, bg = col.popup_bg },
    SnacksNotifierBorderTrace = { fg = col.purple, bg = col.popup_bg },

    -- Snacks input
    SnacksInputBorder = { fg = col.comment, bg = col.float_bg },
    SnacksInputTitle = { fg = col.cyan, bg = col.float_bg },
    SnacksInputNormal = { fg = col.foreground, bg = col.float_bg },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

return M
