call plug#begin('~/.config/nvim/autoload/plugged')

"themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'mhartington/oceanic-next'
Plug 'ayu-theme/ayu-vim'
Plug 'overcache/NeoSolarized'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'sainnhe/everforest'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" typing
Plug 'tpope/vim-surround'
Plug 'cohama/lexima.vim' "autoclose {},''...etc

" Tree
Plug 'scrooloose/nerdtree'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
" Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-commentary'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'
Plug 'honza/vim-snippets'

" git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb' "enable :GBrowse command

" vala
" Plug 'arrufat/vala.vim'


if has('nvim')
  " Plug 'neovim/nvim-lspconfig'
  " Plug 'kabouzeid/nvim-lspinstall'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'hrsh7th/nvim-compe'
  " Plug 'nvim-treesitter/nvim-treesitter',{'do':':TSUpdate'}
  Plug 'nvim-lua/completion-nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "react plugins
  Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " Plug 'kyazdani42/nvim-web-devicons'
  " Plug 'kabouzeid/nvim-lspinstall'
  " Plug 'norcalli/nvim-colorizer.lua'

endif

call plug#end()
