vim.g.gruvbox_contrast_dark = "hard"
vim.g.gruvbox_italic = 1
vim.g.gruvbox_transparent_bg = 1
vim.g.gruvbox_sign_column = 'bg0'
-- vim.g.gruvbox_improved_warnings=1
vim.cmd("colorscheme gruvbox")
vim.g.lightline = { colorscheme = "gruvbox" }

require('todo-comments').setup()
require('gitsigns').setup({
  signs = {
    delete = { text = "✗" }
  }
})

-- nerdTree
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeQuitOnOpen = 1
vim.g.NERDTreeAutoDeleteBuffer = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeDirArrows = 1
-- vim.g.NERDTreeShowLineNumbers=1
vim.g.NERDTreeMapOpenInTab = '\t'

-- vim.g.indentLine_char = '.'
if vim.fn.exists("&termguicolors") and vim.fn.exists('&winblend') then
  vim.opt.termguicolors = true
  vim.opt.winblend = 0
  vim.opt.wildoptions = 'pum'
  vim.opt.pumblend = 5
  vim.cmd('highlight Normal ctermbg=NONE')

end

--format on save
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { "*.js", '*.py', '*.jsx', '*.lua' },
  callback = vim.lsp.buf.formatting_sync
})

-- au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = vim.env.MYVIMRC,
  command = 'source ' .. vim.env.MYVIMRC
})

-- AUTO SAVE
local autosaveFoldsId = vim.api.nvim_create_augroup('AutoSaveFolds', { clear = true })

vim.api.nvim_create_autocmd('BufWinLeave', {
  pattern = '?*',
  command = 'mkview 1',
  group = autosaveFoldsId
})

vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '?*',
  command = 'silent! loadview 1',
  group = autosaveFoldsId
})

--copilot config
vim.cmd('imap <silent><script><expr> <C-j> copilot#Accept("")')
-- imap <silent><script><expr> <C-l> copilot#Next()

--NOTE: este no funciona
-- vim.keymap.set('i', '<C-j>', vim.fn['copilot#Accept'](""), {
--   silent = true,
--   remap = true,
--   expr = true,
-- })

vim.g.copilot_no_tab_map = true
