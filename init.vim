filetype plugin indent on
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
" set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent" indents
set shiftwidth=2
" set tabstop=2
set ai "Auto indent
set si "Smart indent
" set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
" set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
" set autochdir                           " Your working directory will always be the same as your working directory
set scrolloff=10

set numberwidth=1
set showmatch
" set foldmethod=syntax
" set relativenumber
" set laststatus=2
set hlsearch
set incsearch
set ignorecase
set smartcase

so ~/.config/nvim/plugins.vim
luafile ~/.config/nvim/lua/plug-config/telescope-config.lua

so ~/.config/nvim/plugins-config/general.vim
so ~/.config/nvim/plugins-config/lightline.vim
so ~/.config/nvim/plugins-config/coc.vim
so ~/.config/nvim/plugins-config/vim-snippets.vim

so ~/.config/nvim/maps.vim


if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  " set winblend=0
  " set wildoptions=pum
  " set pumblend=5

  " let ayucolor="mirage"
  " colorscheme ayu

  " let g:oceanic_next_terminal_bold = 1
  " let g:oceanic_next_terminal_italic = 1

  " let g:nord_bold = 1
  " let g:nord_italic_comments = 1
  " let g:nord_italic = 1

  " let g:everforest_background = 'hard'
  " " let g:everforest_transparent_background = 1
  " let g:everforest_enable_italic = 1
  " colorscheme everforest
  "
  " let g:gruvbox_material_background = 'hard'
  " let g:gruvbox_material_transparent_background = 1
  " let g:gruvbox_material_enable_italic = 1
  " colorscheme gruvbox-material

  let g:gruvbox_italic=1
  let g:gruvbox_transparent_bg=1
  colorscheme gruvbox
endi

" #073642:#dc322f:#859900:#b58900:#268bd2:#ec0048:#2aa198:#94a3a5:#586e75:#cb4b16:#859900:#b58900:#268bd2:#d33682:#2aa198:#6c71c4
" #073642:#cc241d:#98971a:#d79921:#458588:#ec0048:#689d6a:#a89984:#928374:#d65d0e:#98971a:#d79921:#458588:#d33682:#689d6a:#6c71c4

"to save folding
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave ?* mkview 1
  autocmd BufWinEnter ?* silent! loadview 1
augroup END

au! BufWritePost $MYVIMRC source %      " auto Plug 'honza/vim-snippets'source when writing to init.vm alternatively you can run :source $MYVIMRC

let g:kite_supported_languages = ['python','javascript']

" vimrc
let g:completion_chain_complete_list = {
    \ 'default': [
    \    {'complete_items': ['lsp', 'snippet', 'tabnine']},
    \    {'mode': '<c-p>'},
    \    {'mode': '<c-n>'}
    \]
\}

