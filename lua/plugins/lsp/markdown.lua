return {
	{
		'iamcco/markdown-preview.nvim',
		ft = { 'markdown' },
		build = function()
			vim.fn['mkdp#util#install']()
		end,
	},
	{
		'Kicamon/markdown-table-mode.nvim',
		ft = { 'markdown' },
		config = function()
			require('markdown-table-mode').setup({
				filetype = {
					'*.md',
				},
				options = {
					insert = true, -- when typing "|"
					insert_leave = true, -- when leaving insert
					pad_separator_line = true, -- add space in separator line
					alig_style = 'default', -- default, left, center, right
				},
			})
		end
	}
}
