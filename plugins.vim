call plug#begin('~/.config/nvim/autoload/plugged')

"themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" typing
Plug 'tpope/vim-surround'
Plug 'cohama/lexima.vim' "autoclose {},''...etc

" Tree
Plug 'scrooloose/nerdtree'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-commentary'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'

" git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb' "enable :GBrowse command

" html
Plug 'mattn/emmet-vim'

" vala
Plug 'arrufat/vala.vim'


if has('nvim')
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'onsails/lspkind.nvim'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  " Plug 'honza/vim-snippets'
  " Plug 'SirVer/ultisnips'
  " Plug 'quangnguyen30192/cmp-nvim-ultisnips'
  " Plug 'rafamadriz/friendly-snippets'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

  Plug 'glepnir/lspsaga.nvim'
  " Plug 'hrsh7th/nvim-compe'
  " Plug 'nvim-treesitter/nvim-treesitter',
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " Plug 'kyazdani42/nvim-web-devicons'
  " Plug 'kabouzeid/nvim-lspinstall'
  " Plug 'norcalli/nvim-colorizer.lua'
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}

endif

call plug#end()
