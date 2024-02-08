local builtin = require("telescope.builtin")

vim.g.mapleader = " "

-- Tab
vim.o.shiftwidth = 2
vim.o.tabstop    = 2
vim.o.expandtab  = true

-- Show numbers
vim.wo.number         = true
vim.wo.relativenumber = true

-- Disable SwapFile
vim.opt.swapfile = false

-- Always copy text to clipboard
vim.opt.clipboard = "unnamedplus"

-- Splits
vim.o.splitbelow = true
vim.o.splitright = true

-- nvim-tree
vim.keymap.set("n", "<leader>to", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>")

-- telescope
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Buffers 
vim.keymap.set("n", "<leader>bn", "<cmd>enew<CR><cmd>NvimTreeToggle<CR>") -- deletes current window
vim.keymap.set("n", "<leader>bc", "<cmd>bdelete<CR>") -- deletes current window
vim.keymap.set("n", "<leader>po", "<cmd>BufferLinePick<CR>")
vim.keymap.set("n", "<leader>pc", "<cmd>BufferLinePickClose<CR>")

-- Splits and tabs
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>") -- Vertical split in tab
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>") -- Horizontal split in tab
vim.keymap.set("n", "<leader>sc", "<C-w>q") -- Close selected window

vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR><cmd>NvimTreeToggle<CR>") -- New window and toggle nvim-tree

vim.keymap.set("n", "<C-H>", "<cmd>BufferLineMovePrev<CR>") -- Move buffer left
vim.keymap.set("n", "<C-L>", "<cmd>BufferLineMoveNext<CR>") -- Move buffer right
vim.keymap.set("n", "H", "<cmd>BufferLineCyclePrev<CR>") -- Move to left buffer
vim.keymap.set("n", "L", "<cmd>BufferLineCycleNext<CR>") -- Move to right buffer

vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>") -- Close tab
vim.keymap.set("n", "<leader>tt", "<cmd>vsplit | terminal<CR>") -- Open terminal in current tab
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]]) -- Enter visual mode in terminal

vim.keymap.set("n", "g1", "1gt") -- Switch between tabs
vim.keymap.set("n", "g2", "2gt")
vim.keymap.set("n", "g3", "3gt")
vim.keymap.set("n", "g4", "4gt")
vim.keymap.set("n", "g5", "5gt")
vim.keymap.set("n", "g6", "6gt")
vim.keymap.set("n", "g7", "7gt")
vim.keymap.set("n", "g8", "8gt")
vim.keymap.set("n", "g9", "9gt")

vim.keymap.set("n", "gh", "<C-W><C-H>") -- Switch between splitted windows
vim.keymap.set("n", "gj", "<C-W><C-J>")
vim.keymap.set("n", "gk", "<C-W><C-K>")
vim.keymap.set("n", "gl", "<C-W><C-L>")

-- Moving
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Highlight text and move it around
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-k>", "<C-u>zz") -- Up for a half of page
vim.keymap.set("n", "<C-j>", "<C-d>zz") -- Down for a half of page

vim.keymap.set("x", "p", "P")

-- Markdown preview
vim.keymap.set("n", "<leader>md", "<cmd>MarkdownPreviewToggle<CR>")

