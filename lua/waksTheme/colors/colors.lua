-- waksTheme/lua/waksTheme/colors.lua
local M = {}

--- Define the ColorScheme
--- @enum M.palette
M.palette = {
  -- Base colors
  background = '#191a2e', -- Dark navy blue (not pure black)
  foreground = '#f8f8f2',
  selection = '#44475a',
  comment = '#6272a4',

  -- Core syntax colors
  red = '#ff5555',
  orange = '#ffb86c',
  yellow = '#f1fa8c',
  green = '#20e3b2',  -- Teal green
  blue = '#8be9fd',   -- Added: Bright blue
  purple = '#9a86fd', -- Light purple
  cyan = '#2cccff',   -- Bright cyan
  pink = '#ff6bcb',   -- Hot pink

  -- ===== NEW: DISTINCT COLORS FOR DIFFERENT ELEMENTS =====
  -- Control flow (different from keywords)
  control_flow = '#ff79c6', -- Bright magenta

  -- Variables and identifiers
  variable_cpp = '#8be9fd',  -- Light blue for C++ variables
  variable_rust = '#50fa7b', -- Lime green for Rust variables

  -- Struct/Class related
  struct_definition = '#bd93f9', -- Purple for struct/class names
  struct_field = '#ffb86c',      -- Orange for struct fields (different!)
  class_method = '#50fa7b',      -- Green for class methods

  -- Function related
  function_name = '#50fa7b', -- Green for function names
  parameter = '#ffb86c',     -- Orange for parameters (matches struct fields?)

  -- Type system
  type_primitive = '#8be9fd', -- Cyan for primitive types (i32, int)
  type_user = '#bd93f9',      -- Purple for user-defined types

  -- UI elements
  cursor_line = '#2a2c42', -- Slightly lighter than background
  visual_bg = '#44475a',
  line_number = '#6272a4',

  -- Status line
  status_normal_bg = '#9a86fd', -- Purple
  status_normal_fg = '#191a2e',
  status_insert_bg = '#20e3b2', -- Teal
  status_visual_bg = '#ffb86c', -- Orange

  -- Terminal & editor
  terminal_green = '#20e3b2',
  terminal_magenta = '#ff6bcb',
  cursor_foreground = '#9a86fd',

  -- ===== PLUGIN-SPECIFIC BACKGROUNDS =====
  -- For snacks/notifications (not pure black)
  float_bg = '#212337', -- Slightly lighter than main background
  popup_bg = '#222436', -- For popups, notifications

  -- Tokyo Night style backgrounds (gradient-like)
  tokyo_bg_dark = '#16161e',  -- Darkest
  tokyo_bg_mid = '#1a1b26',   -- Middle
  tokyo_bg_light = '#24283b', -- Lightest
}

M.variants = {
  default = M.palette,
  -- Optional: Add a high contrast variant
  high_contrast = {
    background = '#0f0f1a',
    foreground = '#ffffff',
    struct_field = '#ffaa33', -- More orange
    -- ... override other colors
  }
}

return M
