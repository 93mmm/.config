vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.guicursor = ""
vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.updatetime = 50
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Tab
vim.o.shiftwidth = 4
vim.o.tabstop    = 4
vim.o.expandtab  = true

-- Show numbers
vim.wo.number         = true
vim.wo.relativenumber = true
vim.opt.showtabline   = 1

-- Disable SwapFile
vim.opt.swapfile = false

-- Always copy text to clipboard
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("x", "p", "P")

-- Splits
vim.o.splitbelow = true
vim.o.splitright = true

-- File tree mappings
vim.keymap.set("n", "<leader>to", "<cmd>Neotree toggle<CR>")

-- Splits and tabs
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>") -- Vertical split in tab
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>") -- Horizontal split in tab
vim.keymap.set("n", "<leader>sc", "<C-w>q") -- Close selected window
vim.keymap.set("n", "<leader>ss", "<C-w><C-r>") -- Swap splits

-- Moving
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Highlight text and move it around
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- 0 bind
vim.keymap.set("n", "gh", "")

-- search
vim. keymap.set("n", "n", "nzzzv")

-- Markdown preview
vim.keymap.set("n", "<leader>md", "<cmd>MarkdownPreviewToggle<CR>")
vim. keymap.set("n", "J", "mz]z")

-- Inc-rename
vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })

-- Colorscheme
vim.g.sonokai_style = 'atlantis'
vim.g.sonokai_better_performance = 1
vim.g.sonokai_enable_italic = true
vim.cmd.colorscheme('sonokai')
