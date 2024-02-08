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

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  use({
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
  })

  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  })

  use({
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  })

  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  })

  use("onsails/lspkind.nvim")

  use("hrsh7th/nvim-cmp")
  use('hrsh7th/cmp-nvim-lsp')
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-nvim-lsp-signature-help")
  use('hrsh7th/cmp-cmdline')

  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")

  use("lewis6991/gitsigns.nvim")

  use({
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  })

  use("rebelot/kanagawa.nvim")
  use("folke/tokyonight.nvim")

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({'akinsho/bufferline.nvim', tag = "*"})

  use("tiagovla/scope.nvim")

  use("eoh-bse/minintro.nvim")

  if packer_bootstrap then
    require('packer').sync()
  end
end)
