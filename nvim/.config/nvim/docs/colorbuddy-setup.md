# Colorbuddy Configuration for Transparent Background

This document describes the colorbuddy.nvim setup implemented to improve visibility of comments and line numbers on a transparent blue background while maintaining the Catppuccin theme.

## Problem
With the Catppuccin theme and transparency enabled, comments and line numbers appeared in dark gray, making them difficult to read on a transparent blue background.

## Solution
Configured colorbuddy.nvim to override specific highlight groups while preserving the overall Catppuccin theme aesthetics.

## Files Modified

### 1. `/lua/plugins/init.lua`
Updated the colorbuddy plugin configuration:
```lua
-- colorbuddy
{
  "tjdevries/colorbuddy.nvim",
  config = function()
    -- Delay to ensure theme loads first
    vim.defer_fn(function()
      require "configs.colorbuddy"
    end, 100)
  end,
  event = "VeryLazy",
},
```

### 2. `/lua/configs/colorbuddy.lua` (Created)
New configuration file that handles color overrides:

#### Key Features:
- **Immediate Application**: Sets comment colors to white immediately on load
- **Persistent Overrides**: Uses autocmds to maintain colors after colorscheme changes
- **Buffer-Specific**: Applies colors when entering any buffer to ensure compatibility with all file types

#### Color Overrides:
- **Comments**: `#ffffff` (bright white) for maximum visibility
- **Line Numbers**: `#c0c0c0` (light gray) for regular lines, `#ffffff` (bright white) for current line
- **Other Elements**: Improved visibility for NonText, SpecialKey, and Whitespace

#### Autocmds:
- `ColorScheme`: Reapplies comment colors when theme changes
- `BufEnter`: Ensures colors are applied in all buffers

## Result
- Comment text (e.g., `// comments`, `# comments`) now appears in bright white
- Line numbers are clearly visible in light gray
- Current line number is highlighted in bright white
- Catppuccin theme colors remain intact for all other syntax elements
- Changes persist across colorscheme reloads and buffer switches

## Usage
The configuration loads automatically with a 100ms delay after the theme loads. No manual intervention required.

If colors don't apply immediately, you can manually reload with:
```vim
:lua require("configs.colorbuddy")
```

## Theme Compatibility
This setup is specifically designed for:
- Catppuccin theme
- Transparency enabled
- Blue transparent backgrounds

The configuration can be easily modified for other themes by adjusting the color values in the `set_comment_colors()` function.