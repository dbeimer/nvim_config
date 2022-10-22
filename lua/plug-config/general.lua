vim.g.gruvbox_italic = 1
vim.g.gruvbox_transparent_bg = 1
vim.g.gruvbox_sign_column = 'bg0'

vim.g.nord_italic_comments = true
-- vim.cmd('colorscheme everblush')
require('nord-otro')

require('gitsigns').setup({
	signs = {
		add = { text = '▊' },
		change = { text = '▊' },
		delete = { text = "✗" }
	},
	on_attach = function(bufnr)
		local gs = package.loaded.gitsigns

		local function map(mode, l, r, opts)
			opts = opts or {}
			opts.buffer = bufnr
			vim.keymap.set(mode, l, r, opts)
		end

		-- Navigation
		map('n', ']c', function()
			if vim.wo.diff then return ']c' end
			vim.schedule(function() gs.next_hunk() end)
			return '<Ignore>'
		end, { expr = true })

		map('n', '[c', function()
			if vim.wo.diff then return '[c' end
			vim.schedule(function() gs.prev_hunk() end)
			return '<Ignore>'
		end, { expr = true })

		-- Actions
		map({ 'n', 'v' }, '<leader>hs', ':Gitsigns stage_hunk<CR>')
		map({ 'n', 'v' }, '<leader>hr', ':Gitsigns reset_hunk<CR>')
		map('n', '<leader>hS', gs.stage_buffer)
		map('n', '<leader>hu', gs.undo_stage_hunk)
		map('n', '<leader>hR', gs.reset_buffer)
		map('n', '<leader>hp', gs.preview_hunk)
		map('n', '<leader>hb', function() gs.blame_line { full = true } end)
		map('n', '<leader>tb', gs.toggle_current_line_blame)
		map('n', '<leader>hd', gs.diffthis)
		map('n', '<leader>hD', function() gs.diffthis('~') end)
		map('n', '<leader>td', gs.toggle_deleted)

		-- Text object
		map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
	end
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
	-- vim.opt.winblend = 0
	-- vim.opt.wildoptions = 'pum'
	-- vim.opt.pumblend = 5
	-- vim.cmd('highlight Normal ctermbg=NONE')

end

require('colorizer').setup()
require('nvim-ts-autotag').setup()

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

vim.api.nvim_create_autocmd({ 'BufRead', 'BufEnter' }, {
	pattern = '*.astro',
	command = 'set filetype=astro',
})
