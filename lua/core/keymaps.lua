-- nvim-tree
vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>")

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- NViM remaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gvzz") -- Highlight text and move it around
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gvzz")

vim.keymap.set("n", "<C-k>", "<C-u>zz") -- Up for a half of page
vim.keymap.set("n", "<C-j>", "<C-d>zz") -- Down for a half of page

vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>") -- Vertical split window
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>") -- Horizontal split window

vim.keymap.set("n", "<leader>wn", "<cmd>tabnew<CR>") -- New window
vim.keymap.set("n", "<leader>wc", "<cmd>tabclose<CR>") -- Close window
vim.keymap.set("n", "<leader>wt", "<cmd>tabnew | term<CR>") -- New terminal window

vim.keymap.set("n", "<leader>1", "1gt") -- Switch between windows
vim.keymap.set("n", "<leader>2", "2gt")
vim.keymap.set("n", "<leader>3", "3gt")
vim.keymap.set("n", "<leader>4", "4gt")
vim.keymap.set("n", "<leader>5", "5gt")
vim.keymap.set("n", "<leader>6", "6gt")
vim.keymap.set("n", "<leader>7", "7gt")
vim.keymap.set("n", "<leader>8", "8gt")
vim.keymap.set("n", "<leader>9", "9gt")

vim.keymap.set("n", "gh", "<C-W><C-H>") -- Switch between splitted windows
vim.keymap.set("n", "gj", "<C-W><C-J>")
vim.keymap.set("n", "gk", "<C-W><C-K>")
vim.keymap.set("n", "gl", "<C-W><C-L>")

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]]) -- Enter visual mode in terminal
