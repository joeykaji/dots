local keymap = vim.keymap

keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>")
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>sx", "<cmd>close<CR>")
keymap.set("n", "<leader>ss", "<C-w>w")
keymap.set("n", "<leader>=", "<C-w>=")

keymap.set("n", "<C-Up>", "<cmd>resize +5<CR>")
keymap.set("n", "<C-Down>", "<cmd>resize -5<CR>")
keymap.set("n", "<C-Left>", "<cmd>vertical resize -5<CR>")
keymap.set("n", "<C-Right>", "<cmd>vertical resize +5<CR>")

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>")
keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>")

keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>")
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>")

keymap.set("n", "<leader>e", require("snacks.picker").explorer)
keymap.set("n", "<leader>ff", require("snacks.picker").files)
keymap.set("n", "<leader>fs", require("snacks.picker").grep)
keymap.set("n", "<leader>fc", require("snacks.picker").grep_word)

keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

keymap.set("v", "<leader>y", [["+y]])
keymap.set("n", "<leader>yy", [["+yy"]])

keymap.set("v", "p", "pgvy")

keymap.set("v", "-", ":m '>+1<CR>gv=gv")
keymap.set("v", "_", ":m '<-2<CR>gv=gv")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set({ "n", "v" }, "j", "gj")
keymap.set({ "n", "v" }, "k", "gk")
keymap.set({ "n", "v" }, "J", "5gj")
keymap.set({ "n", "v" }, "K", "5gk")
keymap.set({ "n", "v" }, "H", "g^")
keymap.set({ "n", "v" }, "L", "g$")

keymap.set("i", "{<CR>", "{<CR>}<Esc>O")
