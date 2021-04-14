require('packer').startup(
  function()
    use 'romainl/Apprentice'
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'akinsho/nvim-bufferline.lua'
    use 'nvim-treesitter/nvim-treesitter'
    use 'christoomey/vim-tmux-navigator'
    use 'tomtom/tcomment_vim'
    use 'qpkorr/vim-bufkill'
    use 'windwp/nvim-autopairs'
    use 'norcalli/nvim-colorizer.lua'
    use 'posva/vim-vue'
    use {
      "lukas-reineke/indent-blankline.nvim", branch = "lua"
    }
    use {
      'glepnir/galaxyline.nvim',
	branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
      'junegunn/fzf',
	requires= {'junegunn/fzf.vim'}
    }
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
	'nvim-lua/plenary.nvim'
      }
    }
  end
)

require'plugins.galaxyline'
require'plugins.indent-blankline'
require'plugins.nvim-bufferline'
require'plugins.nvim-tree'
require'plugins.fzf'

require'nvim-autopairs'.setup()
require'gitsigns'.setup()
require'colorizer'.setup()
