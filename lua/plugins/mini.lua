return {
	{ 'echasnovski/mini.basics', version = false, lazy = false, opts = { mappings = { windows = true } } },
	{ 'echasnovski/mini.starter', version = false, opts = true },
	{ 'echasnovski/mini.icons', version = false, opts = true },
	{ 'echasnovski/mini.statusline', version = false, opts = true },
	{ 'echasnovski/mini.clue', version = false, opts = { 
		window = {
    			delay = 500,
    			config = { width = "auto", border = "single" },
  		},
		triggers = { 
			-- leader triggers
			{ mode = 'n', keys = '<Leader>' },
			{ mode = 'x', keys = '<Leader>' },

	    		-- Built-in completion
	    		{ mode = 'i', keys = '<C-x>' },

	    		-- `g` key
	    		{ mode = 'n', keys = 'g' },
	    		{ mode = 'x', keys = 'g' },
			},
			
			-- `z` key
    			{ mode = 'n', keys = 'z' },
    			{ mode = 'x', keys = 'z' },
		} 
	},
	{ 'echasnovski/mini.files', version = false, depends = { 'echasnovski/mini.icon', version = false, opts = true }, opts = true },
}
