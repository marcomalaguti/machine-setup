local keymap = vim.keymap

-- general
keymap.set("i", "jk", "<ESC>") -- esc

keymap.set("n", "x", "_X") -- avoid system

keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizzontally
keymap.set("n", "<leader>se", "<C-w>=") -- split equally
keymap.set("n", "<leader>sx", ":close<CR>") -- close split

keymap.set("n", "<leader>to", ":tabnew<CR>") -- new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- find files
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>") -- find text
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>") -- find current string
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>") -- buffers
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>") -- help

