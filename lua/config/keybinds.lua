-- [[ Basic Keymaps ]]
vim.keymap.set("i", "jk", "<Esc>l")
vim.keymap.set("i", "kj", "<Esc>l")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<C-n>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-p>", "<cmd>cprev<CR>")

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- This is for pasting from the system clipboard
vim.keymap.set("v", "<S-p>", '"+p')
vim.keymap.set("n", "<S-p>", '"+p')
vim.keymap.set("v", "<S-y>", '"+y')
vim.keymap.set("n", "<S-y>", '"+y')
vim.keymap.set("i", "<C-S-v>", '<Esc>"+pa')

-- For switching between buffers using Alt H, L
vim.api.nvim_set_keymap("n", "<M-h>", ":bprev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<M-l>", ":bnext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<M-i>", ":bd!<CR>", { noremap = true })

-- Ctrl Backspace
vim.api.nvim_set_keymap("i", "<C-BS>", "<C-w>", { noremap = true })

-- folds

-- barbar commands
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "<A-h>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-l>", "<Cmd>BufferNext<CR>", opts)

-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

-- Close buffer
map("n", "<A-i>", "<Cmd>BufferClose<CR>", opts)

-- Magic buffer-picking mode
map("n", "<A-p>", "<Cmd>BufferPick<CR>", opts)
map("n", "<A-S-p>", "<Cmd>BufferPickDelete<CR>", opts)

-- Sort automatically by...
map("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>", opts)
map("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)
