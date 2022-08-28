vim.g.mapleader = " "

vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

vim.keymap.set('n', '<leader>w', ':w<cr>')
vim.keymap.set('n', '<leader>q', ':q<cr>')
vim.keymap.set('n', '<leader>Q', ':q!<cr>')

--moving text
vim.keymap.set('v', 'J', ":m '>+1<cr>gv==gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv==gv")
vim.keymap.set('n', '<leader>j', ':m .+1<cr>==')
vim.keymap.set('n', '<leader>k', ':m .-2<cr>==')

-- commentary
vim.keymap.set('n', '<leader>;', ':Commentary<cr>')
vim.keymap.set('v', '<leader>;', ':Commentary<cr>')

vim.keymap.set('n', '<leader>nt', ':NERDTreeToggle<cr>')

-- split resize
vim.keymap.set('n', '<leader>>', '10<C-w>>')
vim.keymap.set('n', '<leader><', '10<C-w><')

vim.keymap.set('n', '<leader>s', '<Plug>(easymotion-s2)')

--telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep)
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers)
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags)
vim.keymap.set('n', '<leader>td', ':TodoTelescope<cr>')

--text tabbing
vim.keymap.set('n', '<S-Tab>', '<')
vim.keymap.set('i', '<S-Tab>', '<Esc><i')
vim.keymap.set('v', '<S-Tab>', '<gv')
vim.keymap.set('v', '<Tab>', '>gv')

--text format
vim.keymap.set('n', '<leader>F', vim.lsp.buf.formatting_sync)
vim.keymap.set('v', '<leader>F', vim.lsp.buf.formatting_sync)

-- vsnip
vim.keymap.set({ 'i', 's' }, '<Tab>', function()
  if vim.fn["vsnip#jumpable"](1) == 1 then
    return '<Plug>(vsnip-jump-next)'
  else
    return '<tab>'
  end
end, { expr = true, remap = true })

vim.keymap.set({ 'i', 's' }, '<S-Tab>', function()
  if vim.fn["vsnip#jumpable"](-1) == 1 then
    return '<Plug>(vsnip-jump-prev)'
  else
    return '<S-Tab>'
  end
end, { expr = true, remap = true })
--paste imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>' to lua
