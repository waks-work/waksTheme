-- waksTheme/lua/waksTheme/theme/notify.lua
local colors = require('waksTheme.colors')
local M = {}

M.set_highlights = function(variant)
    local col = colors.variants[variant] or colors.variants.default

    -- Notify highlights
    local highlights = {
        NotifyBackground = { bg = col.popup_bg },

        -- Error level
        NotifyERRORBorder = { fg = col.red },
        NotifyERRORIcon = { fg = col.red },
        NotifyERRORTitle = { fg = col.red, italic = false },
        NotifyERRORBody = { fg = col.foreground, bg = col.popup_bg },

        -- Warning level
        NotifyWARNBorder = { fg = col.yellow },
        NotifyWARNIcon = { fg = col.yellow },
        NotifyWARNTitle = { fg = col.yellow, italic = false },
        NotifyWARNBody = { fg = col.foreground, bg = col.popup_bg },

        -- Info level
        NotifyINFOBorder = { fg = col.cyan },
        NotifyINFOIcon = { fg = col.cyan },
        NotifyINFOTitle = { fg = col.cyan, italic = false },
        NotifyINFOBody = { fg = col.foreground, bg = col.popup_bg },

        -- Debug level
        NotifyDEBUGBorder = { fg = col.orange },
        NotifyDEBUGIcon = { fg = col.orange },
        NotifyDEBUGTitle = { fg = col.orange, italic = false },
        NotifyDEBUGBody = { fg = col.foreground, bg = col.popup_bg },

        -- Trace level
        NotifyTRACEBorder = { fg = col.purple },
        NotifyTRACEIcon = { fg = col.purple },
        NotifyTRACETitle = { fg = col.purple, italic = false },
        NotifyTRACEBody = { fg = col.foreground, bg = col.popup_bg },
    }

    for group, hl in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return M
