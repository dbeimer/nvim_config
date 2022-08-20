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
" Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline' "agrega la linea de identacion
Plug 'tpope/vim-commentary'
" Plug 'maximbaz/lightline-ale'
" Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" git
Plug 'tanvirtin/vgit.nvim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb' "enable :GBrowse command


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

  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

  Plug 'glepnir/lspsaga.nvim'
  " Plug 'nvim-treesitter/nvim-treesitter',
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'folke/todo-comments.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " Plug 'kyazdani42/nvim-web-devicons'
  " Plug 'norcalli/nvim-colorizer.lua'

  Plug 'rcarriga/nvim-notify'

  Plug 'github/copilot.vim'
endif

call plug#end()
