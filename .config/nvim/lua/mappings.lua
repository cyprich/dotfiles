require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" }
-- ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" }
-- ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" }
-- ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" }

vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { desc = "Tmux Navigate Right" })
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { desc = "Tmux Navigate left" })
vim.keymap.set("n", "<C-k>", ":TmuxNavigateDown<CR>", { desc = "Tmux Navigate Down" })
vim.keymap.set("n", "<C-j>", ":TmuxNavigateUp<CR>", { desc = "Tmux Navigate Up" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
