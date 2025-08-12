require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Copilot mappings
map(
  "i",
  "<C-j>",
  'copilot#Accept("\\<CR>")',
  { expr = true, replace_keycodes = false, desc = "Accept Copilot suggestion" }
)
map("i", "<C-l>", "<Plug>(copilot-accept-word)", { desc = "Accept Copilot word" })
map("i", "<C-;>", "<Plug>(copilot-next)", { desc = "Next Copilot suggestion" })
map("i", "<C-,>", "<Plug>(copilot-previous)", { desc = "Previous Copilot suggestion" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <c:r>")
