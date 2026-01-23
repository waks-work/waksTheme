-- waksTheme/lua/waksTheme/theme/dap.lua
local colors = require('waksTheme.colors')

local M = {}

M.set_highlights = function(variant)
  local col = colors.variants[variant] or colors.variants.default

  -- DAP (Debugger) highlights
  local highlights = {
    -- Basic debugger marks
    DapBreakpoint = { fg = col.red },
    DapBreakpointCondition = { fg = col.yellow },
    DapBreakpointRejected = { fg = col.purple },
    DapLogPoint = { fg = col.cyan },
    DapStopped = { fg = col.green },

    -- DAP UI specific
    DapUIScope = { fg = col.cyan },
    DapUIType = { fg = col.purple },
    DapUIValue = { fg = col.cyan },
    DapUIVariable = { fg = col.foreground },
    DapUIModifiedValue = { fg = col.orange },
    DapUIDecoration = { fg = col.cyan },
    DapUIThread = { fg = col.green },
    DapUIStoppedThread = { fg = col.cyan },
    DapUISource = { fg = col.purple },
    DapUILineNumber = { fg = col.cyan },
    DapUIFloatBorder = { link = "FloatBorder" },

    DapUIWatchesEmpty = { fg = col.red },
    DapUIWatchesValue = { fg = col.green },
    DapUIWatchesError = { fg = col.red },

    DapUIBreakpointsPath = { fg = col.cyan },
    DapUIBreakpointsInfo = { fg = col.green },
    DapUIBreakpointsCurrentLine = { fg = col.green, bold = true },
    DapUIBreakpointsDisabledLine = { fg = col.comment },

    -- Debug controls
    DapUIStepOver = { fg = col.cyan },
    DapUIStepInto = { fg = col.cyan },
    DapUIStepBack = { fg = col.cyan },
    DapUIStepOut = { fg = col.cyan },
    DapUIStop = { fg = col.red },
    DapUIPlayPause = { fg = col.green },
    DapUIRestart = { fg = col.green },
    DapUIUnavailable = { fg = col.comment },

    DapUIWinSelect = { fg = col.orange },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
