vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
   use "wbthomason/packer.nvim"
   use "m4xshen/autoclose.nvim"
   use {
      "catppuccin/nvim",
      as = "catppuccin"
   }
   use {
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons", opt = true }
   }
   use "lewis6991/gitsigns.nvim"
   use {
      "nvim-treesitter/nvim-treesitter",
      run = function()
         local ts_update = require "nvim-treesitter.install".update({ with_sync = true })
         ts_update()
      end,
   }
   use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
   })
   use "neovim/nvim-lspconfig"
   use "hrsh7th/nvim-cmp"
   use "hrsh7th/cmp-nvim-lsp"
   use "hrsh7th/cmp-path"
   use "hrsh7th/cmp-cmdline"
   use "L3MON4D3/LuaSnip"
   use "saadparwaiz1/cmp_luasnip"
end)
