local null_ls = require("null-ls")
local sources = {
	null_ls.builtins.diagnostics.eslint_d.with({
		diagnostics_format = '[eslint] #{m}\n(#{c})'
	}),
	null_ls.builtins.formatting.prettierd,
}

null_ls.setup({
	sources = sources,
	on_attach = function(client, bufnr)
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>")
			-- format on save
			vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
		end

		if client.server_capabilities.documentRangeFormattingProvider then
			vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
		end
	end,
})
