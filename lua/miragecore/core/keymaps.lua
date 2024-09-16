
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", {desc = "Exit insert mode with jk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights" })

-- increment/decrement number
keymap.set("n", "<leader>+", "<C-a>", {desc = "Increment number"})
keymap.set("n", "<leader>-", "<C-x>", {desc = "Decrement number" })

--tab
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new Tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "close new Tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "next Tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "previous Tab"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Open current buffer in new Tab"})
