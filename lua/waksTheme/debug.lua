-- waksTheme/lua/waksTheme/debug.lua
local M = {}

-- Function to check what highlight group is under cursor
M.check_highlight = function()
<<<<<<< HEAD
    local result = vim.treesitter.get_captures_at_cursor(0)
    print(vim.inspect(result))

    -- Also check the synID
    local line = vim.fn.line('.')
    local col = vim.fn.col('.')
    local syn_id = vim.fn.synID(line, col, 1)
    local syn_name = vim.fn.synIDattr(syn_id, 'name')
    local hi = vim.api.nvim_get_hl(0, { name = syn_name })

    print("Highlight group: " .. syn_name)
    print("Highlight values: " .. vim.inspect(hi))
=======
  local result = vim.treesitter.get_captures_at_cursor(0)
  print(vim.inspect(result))

  -- Also check the synID
  local line = vim.fn.line('.')
  local col = vim.fn.col('.')
  local syn_id = vim.fn.synID(line, col, 1)
  local syn_name = vim.fn.synIDattr(syn_id, 'name')
  local hi = vim.api.nvim_get_hl(0, { name = syn_name })

  print("Highlight group: " .. syn_name)
  print("Highlight values: " .. vim.inspect(hi))
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

-- Function to list all highlights matching a pattern
M.list_highlights = function(pattern)
<<<<<<< HEAD
    local highlights = vim.api.nvim_get_hl(0, {})
    print("=== Highlights matching '" .. pattern .. "' ===")
    for name, _ in pairs(highlights) do
        if name:match(pattern) then
            local hl = vim.api.nvim_get_hl(0, { name = name })
            print(name .. ": " .. vim.inspect(hl))
        end
    end
=======
  local highlights = vim.api.nvim_get_hl(0, {})
  print("=== Highlights matching '" .. pattern .. "' ===")
  for name, _ in pairs(highlights) do
    if name:match(pattern) then
      local hl = vim.api.nvim_get_hl(0, { name = name })
      print(name .. ": " .. vim.inspect(hl))
    end
  end
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
end

return M
