-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- comment
-- map("n", "<C-g>", function()
--   require("mini.comment").operator('c')
-- end, { desc = "Comment out line" })
-- map("i", "<C-/>", "<Esc>gcc<CR>==gi", { desc = "Comment out line" })
-- map("v", "<C-/>", "gc", { desc = "Comment out line(s)" })

-- move between words
map("n", "<C-Left>", "b", { desc = "Move to start of word" })
map("n", "<C-Right>", "e", { desc = "Move to end of word" })

-- remap window resize
map("n", "<S-C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<S-C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- windows navigation
map("n", "<A-Left>", "<C-w>h", { desc = "Move to window on left" })
map("n", "<A-Right>", "<C-w>l", { desc = "Move to window on right" })

-- cycle through buffers
map("n", "<C-PageUp>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
map("n", "<C-PageDown>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

map("n", "<C-q>", function()
  require("mini.bufremove").delete(0, false)
end, { desc = "Delete buffer" })

-- Organize buffers
map("n", "<A-h>", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer" })
map("n", "<A-l>", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer" })
map("n", "<A-PageUp>", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer" })
map("n", "<A-PageDown>", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer" })

-- Move lines up and down
map("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line(s) up" })
map("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line(s) down" })
-- ... insert mode
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line(s) up" })
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line(s) down" })
-- ... visual mode
map("v", "<A-Up>", ":m '<-2<CR>gv", { desc = "Move line(s) up" })
map("v", "<A-Down>", ":m '>+1<CR>gv", { desc = "Move line(s) down" })

-- Scroll
map("n", "<C-Up>", "<C-Y>", { desc = "Scroll screen up" })
map("n", "<C-k>", "<C-Y>", { desc = "Scroll screen up" })
map("n", "<C-Down>", "<C-E>", { desc = "Scroll screen down" })
map("n", "<C-j>", "<C-E>", { desc = "Scroll screen down" })

-- Remove mapping that makes me crazy
map("n", "<S-Down>", "j")
map("n", "<S-Up>", "k")
map("v", "<S-Down>", "k")
map("v", "<S-Up>", "k")
map("i", "<S-Down>", "")
map("i", "<S-Up>", "")

-- Git
-- Search and replace
map("v", "<C-r>", '"hy:%s/<C-r>h//gc<left><left><left>', { desc = "Search and replace" })
