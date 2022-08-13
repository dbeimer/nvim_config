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
set laststatus=0                        " Always display the status line
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
"set autochdir                           " Your working directory will always be the same as your working directory

set numberwidth=1
set showmatch
":set relativenumber
set laststatus=2
set hlsearch
set incsearch
set ignorecase
set smartcase

so ~/.config/nvim/plugins.vim

luafile ~/.config/nvim/lua/plug-config/manson.lua
luafile ~/.config/nvim/lua/lsp/general.lua
luafile ~/.config/nvim/lua/plug-config/lspsaga-config.lua
luafile ~/.config/nvim/lua/plug-config/telescope-config.lua
luafile ~/.config/nvim/lua/plug-config/cmp-config.lua
luafile ~/.config/nvim/lua/plug-config/notify-config.lua

so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/maps.vim

let g:gruvbox_contrast_dark="hard"
let g:gruvbox_italic=1
colorscheme gruvbox

if exists("&termguicolors") && exists("&winblend")
  syntax enable
  " set termguicolors
  " set winblend=0
  " set wildoptions=pum
  " set pumblend=5
  highlight Normal ctermbg=NONE
endif

"to save folding
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave ?* mkview 1
  autocmd BufWinEnter ?* silent! loadview 1
augroup END

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
