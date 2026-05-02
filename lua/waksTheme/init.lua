-- waksTheme/lua/waksTheme/init.lua
local M = {}

-- Load configuration first
M.config = nil

-- Setup function (must be called before load)
M.setup = function(opts)
<<<<<<< HEAD
    M.config = require('waksTheme.setup').setup(opts)
    return M
=======
  M.config = require('waksTheme.setup').setup(opts)
  return M
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

-- Main load function
M.load = function(variant)
<<<<<<< HEAD
    -- Use config variant if available, otherwise use parameter or default
    variant = variant or (M.config and M.config.variant) or 'default'

    -- Load the theme
    require('waksTheme.theme.theme').set_highlights(variant)
=======
  -- Use config variant if available, otherwise use parameter or default
  variant = variant or (M.config and M.config.variant) or 'default'

  -- Load the theme
  require('waksTheme.theme.theme').set_highlights(variant)
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

-- Convenience access to colors - THIS IS IMPORTANT FOR LUALINE
M.colors = (function()
<<<<<<< HEAD
    local colors = require('waksTheme.colors.colors')
    return colors.palette
=======
  local colors = require('waksTheme.colors.colors')
  return colors.palette
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end)()

-- Reload function
M.reload = function()
<<<<<<< HEAD
    package.loaded['waksTheme.theme.theme'] = nil
    package.loaded['waksTheme.theme'] = nil
    M.load(M.config and M.config.variant or 'default')
=======
  package.loaded['waksTheme.theme.theme'] = nil
  package.loaded['waksTheme.theme'] = nil
  M.load(M.config and M.config.variant or 'default')
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

-- Auto command to reload on ColorScheme event
vim.api.nvim_create_autocmd('ColorScheme', {
<<<<<<< HEAD
    pattern = 'waksTheme',
    callback = function()
        M.reload()
    end
=======
  pattern = 'waksTheme',
  callback = function()
    M.reload()
  end
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
})

return M
