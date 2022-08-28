return require("packer").startup(function(use)
  use 'wbthomason/packer.nvim'

  -- themes
  use 'morhetz/gruvbox'

  -- typing
  use 'tpope/vim-surround'
  use 'cohama/lexima.vim'

  -- Tree
  use 'scrooloose/nerdtree'

  -- IDE
  use 'editorconfig/editorconfig-vim'
  use 'easymotion/vim-easymotion'
  -- use 'mhinz/vim-signify'
  use 'yggdroot/indentline' --agrega la linea de identacion
  use 'tpope/vim-commentary'
  -- use 'maximbaz/lightline-ale'
  -- use 'itchyny/lightline.vim'
  use 'sheerun/vim-polyglot'
  use 'nvim-lualine/lualine.nvim'
  -- If you want to have icons in your statusline choose one of these
  use 'kyazdani42/nvim-web-devicons'
  -- use 'github/copilot.vim'

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    tag = 'release' -- To use the latest release
  }
  use 'tpope/vim-fugitive'
  use 'junegunn/gv.vim'
  use 'tpope/vim-rhubarb' --enable :GBrowse command

  -- for nvim
  if vim.fn.has('nvim') then
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind.nvim'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'hrsh7th/vim-vsnip'

    use 'glepnir/lspsaga.nvim'
    -- use 'nvim-treesitter/nvim-treesitter',
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'folke/todo-comments.nvim'
    use 'nvim-telescope/telescope.nvim'
    -- use 'kyazdani42/nvim-web-devicons'
    -- use 'norcalli/nvim-colorizer.lua'
    use 'rcarriga/nvim-notify'

    -- vscode extensions
    use { 'dsznajder/vscode-es7-javascript-react-snippets', run = 'yarn install --frozen-lockfile && yarn compile' }
  end

end)
