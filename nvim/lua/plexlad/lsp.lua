local lsp = require("lsp-zero")
lsp.preset('recommended')

lsp.set_preferences({
	sign_icons = {
		error = '',
		warn = '',
		hint = '',
		info = ''
	}
})

lsp.setup()
