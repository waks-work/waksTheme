-- waksTheme/lua/waksTheme/init.lua
local M = {}

-- Load configuration first
M.config = nil

-- Setup function (must be called before load)
M.setup = function(opts)
    M.config = require('waksTheme.setup').setup(opts)
    return M
end

-- Main load function
M.load = function(variant)
    -- Use config variant if available, otherwise use parameter or default
    variant = variant or (M.config and M.config.variant) or 'default'

    -- Load the theme
    require('waksTheme.theme.theme').set_highlights(variant)
end

-- Convenience access to colors - THIS IS IMPORTANT FOR LUALINE
M.colors = (function()
    local colors = require('waksTheme.colors.colors')
    return colors.palette
end)()

-- Reload function
M.reload = function()
    package.loaded['waksTheme.theme.theme'] = nil
    package.loaded['waksTheme.theme'] = nil
    M.load(M.config and M.config.variant or 'default')
end

-- Auto command to reload on ColorScheme event
vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = 'waksTheme',
    callback = function()
        M.reload()
    end
})

return M
