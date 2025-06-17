-- NOTE OPTIONS

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NOTE
vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.breakindent = true
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "  ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

vim.opt.cursorline = true
vim.cmd("hi CursorLine guibg=#40394F")
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#40394F", blend = 88 })
-- Optional : Cursor'Line' like an actual underline
-- vim.api.nvim_set_hl(0, "CursorLine", { underline = true })

vim.opt.scrolloff = 13
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- highlight options
vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = "#7A8382" })
-- its somewhere else rn

--Cursor options
vim.api.nvim_set_hl(0, "Cursor", { fg = "red", bg = "white" })
-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:block/Cursor,r-cr:hor20"
vim.opt.guicursor = "n-v-c:block,i-ci-ve:hor30,r-cr:hor20"
-- vim.opt.guicursor = 'n-v-c-i:block'

-- Neovide only options:
if vim.g.neovide then
	vim.g.neovide_title_text_color = "white"
	vim.g.neovide_fullscreen = false
	vim.opt.guicursor = "n-v-c:block,i-ci-ve:hor22,r-cr:hor20"
	-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20"   -- only block
	vim.g.neovide_window_blurred = true
	vim.g.neovide_opacity = 1
	vim.g.neovide_normal_opacity = 0.4
	vim.g.neovide_window_blurred = true

	-- cursor animation length (lesser is faster)
	vim.g.neovide_cursor_animation_length = 0.03

	-- vim.opt.guifont = "0xProto\\ Nerd\\ Font:h11"
	vim.opt.guifont = "Iosevka\\ Nerd\\ Font:h15"
	-- vim.opt.guifont = "CaskaydiaCove \\NF:h13"
end
