vim.g.gruvbox_contrast_dark="hard"
vim.g.gruvbox_italic=1
vim.g.gruvbox_transparent_bg=1
vim.g.gruvbox_sign_column='bg0'
-- vim.g.gruvbox_improved_warnings=1
vim.cmd("colorscheme gruvbox")
vim.g.lightline = { colorscheme = "gruvbox" }

require('vgit').setup()
require('todo-comments').setup()



-- nerdTree
vim.g.NERDTreeShowHidden=1
vim.g.NERDTreeQuitOnOpen=1
vim.g.NERDTreeAutoDeleteBuffer=1
vim.g.NERDTreeMinimalUI=1
vim.g.NERDTreeDirArrows=1
-- vim.g.NERDTreeShowLineNumbers=1
vim.g.NERDTreeMapOpenInTab='\t'

-- vim.g.indentLine_char = '.'
