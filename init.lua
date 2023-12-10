-- Automatic packer installation
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- configuring packer and installing plugins
vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)
  -- Packer
  use("wbthomason/packer.nvim")

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    requires = { {"nvim-lua/plenary.nvim"} }
  })

  -- Colorschemes
  use({
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  })
  use("rebelot/kanagawa.nvim")

  -- Mason (language servers)
  use({
    "williamboman/mason.nvim"
  })

  -- LSP zero
  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    requires = {
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},

      -- LSP Support
      {"neovim/nvim-lspconfig"},
      -- Autocompletion
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-nvim-lsp"},
      {"L3MON4D3/LuaSnip"},
    }
  })
  
  -- NViM tree
  use({
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  })
  
  -- Git signs
  use("lewis6991/gitsigns.nvim")

  if packer_bootstrap then
    require('packer').sync()
  end

end)

-- Colorscheme setup
vim.cmd [[colorscheme kanagawa]]

-- Mappings
vim.g.mapleader = " "

-- Tab
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = true

-- Show numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Disable SwapFile
vim.opt.swapfile = false

-- Telescope setup
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
require("telescope").setup()


-- LSP config
local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps( {buffer = bufnr} )

  require("lspconfig").lua_ls.setup({})

end)

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = { "jedi_language_server", "clangd", "cmake", "biome", "marksman" },
  handlers = {
    lsp_zero.default_setup,
  }
})

-- Completion config
local cmp = require("cmp")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-k>"] = cmp.mapping.select_prev_item()
  })
})

-- GitSigns config
require('gitsigns').setup({
  signs = {
    add          = { text = '│' },
    change       = { text = '│' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  }
})

-- File tree (nvim-tree) config
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", 
          arrow_open = "",
        }
      }
    }
  },
  filters = {
    dotfiles = true,
  },
})

-- NViM file tree remaps
vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>")

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

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]]) -- Enter visual mode in terminal

