return {
	{ 'echasnovski/mini.basics', version = '*', lazy = false, opts = { mappings = { windows = true } } },
	{ 'echasnovski/mini.starter', version = '*', opts = true },
	{ 'echasnovski/mini.statusline', version = '*', opts = true },
	{ 'echasnovski/mini.files', version = '*', depends = { 'echasnovski/mini.icon', version = '*', opts = true }, opts = true },
}
