return {
	 'echasnovski/mini.nvim', 
		version = false, 
		lazy = false, 
		config = function()
			-- UI related modules
			-- Enable icons
			require('mini.icons').setup()
			-- Configure statusline
			require('mini.statusline').setup()
			-- Enable and configure tab line
			require('mini.tabline').setup()
			-- Enable and configure keymap clues
			require('mini.clue').setup({
			triggers = {
				-- Leader triggers
				{ mode = 'n', keys = '<leader>' },
				{ mode = 'x', keys = '<leader>' },
				-- g key
				{ mode = 'n', keys = 'g' },
				{ mode = 'x', keys = 'g' },
				
			},
			clues = {
				require('mini.clue').gen_clues.builtin_completion(),
				require('mini.clue').gen_clues.g(),

			}
		})
			-- Enable and configure indentation guidelines
			require('mini.indentscope').setup()
			-- Enable and configure nicer notifications
			require('mini.notify').setup()
			-- Enable and configure telescope like picker 
			require('mini.pick').setup()
			vim.keymap.set('n', '<leader>fb', '<cmd>Pick buffers<cr>', { desc = 'Find buffer with MiniPick' })
			vim.keymap.set('n', '<leader>ff', '<cmd>Pick files<cr>', { desc = 'Find file with MiniPick' })
			vim.keymap.set('n', '<leader>fg', '<cmd>Pick grep_live<cr>', { desc = 'Find string pattern with MiniPick' })
			vim.keymap.set('n', '<leader>fh', '<cmd>Pick help<cr>', { desc = 'Find help with MiniPick' })
			-- Editor related modules
			-- Enable and configure auto-pairs
			require('mini.pairs').setup()
			-- Enable and configure surrounds
			require('mini.surround').setup()
		end,
}
