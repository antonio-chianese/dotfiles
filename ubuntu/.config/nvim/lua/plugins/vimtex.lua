return {
	'lervag/vimtex',
	lazy = false, -- lazy-loading will disable inverse search
	config = function()
		vim.g.vimtex_quickfix_method = vim.fn.executable 'pplatex' == 1 and 'pplatex' or 'latexlog'
		vim.g.tex_flavor = 'latex'
		vim.g.vimtex_view_method = 'zathura'
		vim.o.conceallevel = 2
		vim.g.tex_conceal = 'abdmg'
	end,
}
