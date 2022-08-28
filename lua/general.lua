vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')


vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
-- vim.o.nowrap                              -- Display long lines as just one line
vim.o.encoding = "utf-8" -- The encoding displayed
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.ruler = true -- Show the cursor position all the time
vim.o.cmdheight = 1 -- More space for displaying messages
vim.opt.iskeyword:append('-') -- treat dash separated words as a word text object--
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.t_Co = 256 -- Support 256 colors
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.o.tabstop = 2 -- Insert 2 spaces for a tab
vim.o.shiftwidth = 2 -- Change the number of space characters inserted for indentation
vim.o.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
vim.o.expandtab = true -- Converts tabs to spaces
vim.o.smartindent = true -- Makes indenting smart
vim.o.autoindent = true -- Good auto indent-- indents
vim.o.shiftwidth = 2
-- vim.o.tabstop=2
vim.o.ai = true --Auto indent
vim.o.si = true --Smart indent
vim.o.laststatus = 0 -- Always display the status line
vim.o.number = true -- Line numbers
vim.o.cursorline = true -- Enable highlighting of the current line
vim.o.background = "dark" -- tell vim what the background color looks like
-- vim.o.showtabline=2                       -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vim.opt.formatoptions:remove('cro') -- Stop newline continution of comments
vim.o.clipboard = 'unnamedplus' -- Copy paste between vim and everything else
--vim.o.autochdir                           -- Your working directory will always be the same as your working directory

vim.o.numberwidth = 1
vim.o.showmatch = true
--:vim.o.relativenumber
vim.o.laststatus = 2
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

-- don't give |ins-completion-menu| messages.
-- vim.o.shortmess+=c
vim.o.signcolumn = "yes" -- always show signcolumns
-- vim.o.diffopt+=Vertical   -- fugitive always vertical diffing
-- vim.g.gruvbox_contrast_dark = "hard"
