-- waksTheme/lua/waksTheme/theme/init.lua
local M = {}

-- List of all theme modules
local modules = {
    'editor', -- CRITICAL: Must be first
    'syntax', -- CRITICAL: Must be second
    'treesitter',
    'semantic_tokens',
    'c',
    'c_syntax',
    'lsp',
    'cmp',
    'dap',
    'noice',
    'notify',
    'nvimtree',
    'telescope',
    'which_key',
    'snacks',
    'render_markdown',
}

-- Function to set highlights for all modules
M.set_highlights = function(variant)
    -- print("=== Loading waksTheme modules for variant: " .. variant .. " ===")

    local loaded_count = 0
    local failed_count = 0

    for _, module_name in ipairs(modules) do
        local ok, module = pcall(require, 'waksTheme.theme.' .. module_name)
        if ok and module.set_highlights then
            local success, err = pcall(module.set_highlights, variant)
            if success then
                -- print("✓ " .. module_name)
                loaded_count = loaded_count + 1
            else
                -- print("✗ " .. module_name .. " - Error: " .. tostring(err))
                failed_count = failed_count + 1
            end
        else
            -- print("✗ " .. module_name .. " - " .. (ok and "no set_highlights function" or "require failed"))
            failed_count = failed_count + 1
        end
    end

    -- print(string.format("=== Complete: %d loaded, %d failed ===", loaded_count, failed_count))
end

-- Optional: Lazy loading of individual modules
M.get_module = function(module_name)
    return require('waksTheme.theme.' .. module_name)
end

return M
