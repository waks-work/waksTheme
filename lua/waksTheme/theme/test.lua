-- waksTheme/lua/waksTheme/theme/tests.lua
local M = {}

M.run_all_tests = function()
    print("=== WAKS THEME TEST SUITE ===")

    -- Add waksTheme to runtimepath
    vim.opt.rtp:append("~/.config/nvim/waksTheme")

    -- Run individual tests
    M.test_colors()
    M.test_module_loading()
    M.test_editor_module()
    M.test_syntax_module()
    M.test_full_theme()
    M.test_highlight_groups()

    print("\n=== TEST SUITE COMPLETE ===")
end

M.test_colors = function()
    print("\n1. TESTING COLORS MODULE:")
    local ok, colors = pcall(require, "waksTheme.colors")
    if ok then
        print("   ✓ Colors module loaded")
        local default = colors.variants.default
        print("   - Foreground:", default.foreground)
        print("   - Background:", default.background)
        print("   - Comment:", default.comment)
        print("   - Function name:", default.function_name)
    else
        print("   ✗ Colors module failed to load")
    end
end

M.test_module_loading = function()
    print("\n2. TESTING MODULE LOADING:")

    local modules = {
        'editor',
        'syntax',
        'treesitter',
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

    for _, module_name in ipairs(modules) do
        local path = 'waksTheme.theme.' .. module_name
        local ok, module = pcall(require, path)
        if ok then
            if type(module.set_highlights) == "function" then
                print("   ✓ " .. module_name .. " (has set_highlights)")
            else
                print("   ✗ " .. module_name .. " (NO set_highlights function)")
            end
        else
            print("   ✗ " .. module_name .. " (failed to require)")
        end
    end
end

M.test_editor_module = function()
    print("\n3. TESTING EDITOR MODULE:")
    local ok, editor = pcall(require, "waksTheme.theme.editor")
    if ok and editor.set_highlights then
        editor.set_highlights("default")

        -- Check critical highlights
        local checks = {
            'Normal',
            'Comment',
            'CursorLine',
            'LineNr',
        }

        for _, group in ipairs(checks) do
            local hl = vim.api.nvim_get_hl(0, { name = group })
            if hl and (hl.fg or hl.bg) then
                print("   ✓ " .. group .. " is set")
            else
                print("   ✗ " .. group .. " is NOT set")
            end
        end
    else
        print("   ✗ Editor module failed")
    end
end

M.test_syntax_module = function()
    print("\n4. TESTING SYNTAX MODULE:")
    local ok, syntax = pcall(require, "waksTheme.theme.syntax")
    if ok and syntax.set_highlights then
        syntax.set_highlights("default")

        -- Check syntax highlights
        local checks = {
            'String',
            'Function',
            'Identifier',
            'Type',
            'Constant',
            'Keyword',
            'Operator',
        }

        for _, group in ipairs(checks) do
            local hl = vim.api.nvim_get_hl(0, { name = group })
            if hl and hl.fg then
                print("   ✓ " .. group .. " is set (" .. (hl.fg or "no fg") .. ")")
            else
                print("   ✗ " .. group .. " is NOT set")
            end
        end
    else
        print("   ✗ Syntax module failed")
    end
end

M.test_full_theme = function()
    print("\n5. TESTING FULL THEME (via init.lua):")
    local ok, theme_init = pcall(require, "waksTheme.theme")
    if ok and theme_init.set_highlights then
        -- Clear existing highlights first
        vim.cmd('highlight clear')

        theme_init.set_highlights("default")
        print("   ✓ Full theme loaded via init.lua")
        print("   - Colorscheme name:", vim.g.colors_name or "none")
    else
        print("   ✗ Theme init failed")
    end
end

M.test_highlight_groups = function()
    print("\n6. FINAL HIGHLIGHT CHECK:")

    local critical_groups = {
        { name = 'Normal',     desc = 'Main text' },
        { name = 'Comment',    desc = 'Comments' },
        { name = 'String',     desc = 'Strings' },
        { name = 'Function',   desc = 'Functions' },
        { name = 'Identifier', desc = 'Identifiers' },
        { name = 'Type',       desc = 'Types' },
        { name = 'Constant',   desc = 'Constants' },
        { name = 'Keyword',    desc = 'Keywords' },
        { name = 'CursorLine', desc = 'Cursor line' },
        { name = 'LineNr',     desc = 'Line numbers' },
    }

    for _, group in ipairs(critical_groups) do
        local hl = vim.api.nvim_get_hl(0, { name = group.name })
        local status = "✗"
        if hl then
            if hl.fg or hl.bg then
                status = "✓"
            end
        end
        print(string.format("   %s %-15s %s", status, group.name, group.desc))
    end
end

-- Quick run function
M.quick_test = function()
    print("=== QUICK TEST ===")
    vim.opt.rtp:append("~/.config/nvim/waksTheme")

    -- Test if modules exist
    local test_modules = { 'editor', 'syntax', 'treesitter' }
    for _, mod in ipairs(test_modules) do
        local ok, m = pcall(require, 'waksTheme.theme.' .. mod)
        print(mod .. ":", ok and "✓" or "✗")
    end

    -- Try to load full theme
    local ok, theme = pcall(require, 'waksTheme.theme')
    if ok then
        theme.set_highlights('default')
        print("Theme loaded")
    end
end

return M
