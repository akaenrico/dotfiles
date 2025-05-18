-- Sets Leader as Spacebar
vim.g.mapleader = " "

local keymap = vim.keymap

-- Keymaps

-- Exit Insert Mode
keymap.set("i", "jk", "<Esc>", { desc = "Exit Insert Mode with jk" })

-- Clear highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

