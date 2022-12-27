local lsp = require("lsp-zero")
lsp.preset('recommended')

lsp.ensure_installed({
	'eslint',
	'pyright',
	'marksman',
	'json-lsp',
	'html-lsp',
	'css-lsp',
})

lsp.set_preferences({
	sign_icons = {
		error = '',
		warn = '',
		hint = '',
		info = ''
	}
})

lsp.setup()
