-- Simple function to set comment colors to white
local function set_comment_colors()
  vim.api.nvim_set_hl(0, "Comment", { fg = "#ffffff" })
  vim.api.nvim_set_hl(0, "@comment", { fg = "#ffffff" })
end

-- Apply immediately
set_comment_colors()

-- Apply after any colorscheme change
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.schedule(set_comment_colors)
  end,
})

-- Apply when entering any buffer (ensures it works for all file types)
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.schedule(set_comment_colors)
  end,
})

local colorbuddy = require("colorbuddy")
colorbuddy.setup()

local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

Color.new("bright_white", "#ffffff")
Color.new("light_gray", "#e0e0e0") 
Color.new("visible_gray", "#c0c0c0")

-- Override line number colors
Group.new("LineNr", c.visible_gray)
Group.new("CursorLineNr", c.bright_white, nil, s.bold)

-- Override some other potentially hard-to-see elements
Group.new("NonText", c.light_gray)
Group.new("SpecialKey", c.light_gray)
Group.new("Whitespace", c.visible_gray)