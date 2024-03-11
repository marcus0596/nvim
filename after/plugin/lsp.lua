local lsp = require('lsp-zero')
lsp.preset('recommended')
require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "rust_analyzer", "tsserver", "eslint", "pyright" },
	automatic_installation = true,
	handlers = {
		lsp.default_setup
	}
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-o>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-p>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-i>'] = cmp.mapping.confirm({select = true}),
		['<C-Space>'] = cmp.mapping.complete(),
	})
})

cmp.setup({
	sources = {
		{name = 'nvim_lsp'},
	}
})
lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}
	vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set('n', '[d', function() vim.lsp.buf.goto_next() end, opts)
	vim.keymap.set('n', ']d', function() vim.lsp.buf.goto_prev() end, opts)
	vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
end)
lsp.setup()
