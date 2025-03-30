-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
   "scottmckendry/cyberdream.nvim",
   config = function() 
    require("cyberdream").setup({
  	  transparent = true,
  	  extensions = {
  		  telescope = true,
  		  treesitter = true,
  	  },
  	  -- highlights = {
  	  --  NormalFloat = { fg = '#FFFFFF', bg = 'pink' },
  	  --  FloatBorder = { bg = 'pink'},
  	  -- },
    })
    vim.cmd('colorscheme cyberdream')
   end
  }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} },
	  -- config = function() 
	  --  require('telescope').setup({
	  --   defaults = {
	  -- 	  winblend = 0,
	  -- 	  color_bg = '#FF0000',
	  --   },
	  --   pickers = {
	  -- 	  find_files = {
	  -- 		  theme = "ivy"
	  -- 	  },
	  -- 	  color_bg = '#FF0000'
	  --   }
	  -- })
	  -- end,
  }


	--  use({
	--    'Mofiqul/dracula.nvim',
	-- as = 'dracula',
	--    config = function()
	--        require('dracula').setup({
	--            style = "day" -- or "soft", or "flavour" etc. check the github page.
	--        })
	-- 	vim.cmd('colorscheme dracula')
	--    end
	--  })

  -- use({
  --  'tiagovla/tokyodark.nvim',
  --  as = 'tokyodark',
  --  opts = {
  --   transparent_background = true,
  --   styles = {
  -- 	  keywords = {italic = false},
  -- 	  identifiers = {italic = false},
  --   },
  --  },
  --  config = function(_, opts)
  --   require('tokyodark').setup(opts)
  --   require("tokyodark").colorscheme()
  --   --vim.cmd('colorscheme tokyodark')
  --   --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  --   --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  --  end,
  -- })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
end)
