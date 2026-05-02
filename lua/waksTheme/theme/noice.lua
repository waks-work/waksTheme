-- waksTheme/lua/waksTheme/theme/noice.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
<<<<<<< HEAD
    local col = colors.variants[variant] or colors.variants.default

    -- Noice highlights
    local highlights = {
        -- Command line
        NoiceCmdline = { fg = col.foreground, bg = col.float_bg },
        NoiceCmdlineIcon = { fg = col.cyan, bg = col.float_bg },
        NoiceCmdlineIconSearch = { fg = col.yellow, bg = col.float_bg },
        NoiceCmdlinePopup = { fg = col.foreground, bg = col.float_bg },
        NoiceCmdlinePopupBorder = { fg = col.purple, bg = col.float_bg },
        NoiceCmdlinePopupBorderSearch = { fg = col.yellow, bg = col.float_bg },

        -- Confirm dialogs
        NoiceConfirm = { fg = col.foreground, bg = col.float_bg },
        NoiceConfirmBorder = { fg = col.cyan, bg = col.float_bg },

        -- Mini notifications
        NoiceMini = { fg = col.foreground, bg = col.popup_bg },

        -- Progress notifications
        NoiceFormatProgressDone = {
            bg = col.float_bg,
            fg = col.green,
        },
        NoiceFormatProgressTodo = {
            bg = col.cursor_line,
            fg = col.comment,
        },

        -- LSP progress
        NoiceLspProgressClient = { fg = col.cyan, bg = col.popup_bg },
        NoiceLspProgressSpinner = { fg = col.purple, bg = col.popup_bg },
        NoiceLspProgressTitle = { fg = col.foreground, bg = col.popup_bg },
    }

    for group, hl in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
=======
  local col = colors.variants[variant] or colors.variants.default

  -- Noice highlights
  local highlights = {
    -- Command line
    NoiceCmdline = { fg = col.foreground, bg = col.float_bg },
    NoiceCmdlineIcon = { fg = col.cyan, bg = col.float_bg },
    NoiceCmdlineIconSearch = { fg = col.yellow, bg = col.float_bg },
    NoiceCmdlinePopup = { fg = col.foreground, bg = col.float_bg },
    NoiceCmdlinePopupBorder = { fg = col.purple, bg = col.float_bg },
    NoiceCmdlinePopupBorderSearch = { fg = col.yellow, bg = col.float_bg },

    -- Confirm dialogs
    NoiceConfirm = { fg = col.foreground, bg = col.float_bg },
    NoiceConfirmBorder = { fg = col.cyan, bg = col.float_bg },

    -- Mini notifications
    NoiceMini = { fg = col.foreground, bg = col.popup_bg },

    -- Progress notifications
    NoiceFormatProgressDone = {
      bg = col.float_bg,
      fg = col.green,
    },
    NoiceFormatProgressTodo = {
      bg = col.cursor_line,
      fg = col.comment,
    },

    -- LSP progress
    NoiceLspProgressClient = { fg = col.cyan, bg = col.popup_bg },
    NoiceLspProgressSpinner = { fg = col.purple, bg = col.popup_bg },
    NoiceLspProgressTitle = { fg = col.foreground, bg = col.popup_bg },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

return M
