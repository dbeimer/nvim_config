 require('general')
 require('plugins')
 require('plug-config.manson')
 require('lsp.general')
 require('lsp.null-lsp')
 require('plug-config.lspsaga-config')
 require('plug-config.telescope-config')
 require('plug-config.cmp-config')
 require('maps')
 require('plug-config.general')
 require('plug-config.notify-config')
 require('plug-config.lualine-config')
 require('plug-config.treesitter-config')

 -- vim.api.nvim_create_autocmd({ 'BufRead', 'BufEnter' }, {
 -- 	pattern = '*.json',
 -- 	command = 'set conceallevel=0'
 -- })
