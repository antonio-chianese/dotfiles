return {
	'stevearc/conform.nvim',
	event = 'VeryLazy',
	cmd = 'ConformInfo',
	keys = { {
		'<A-f>',
		function()
			require('conform').format()
		end,
	} },
	opts = {
		formatters_by_ft = {
			cpp = { 'clang-format' },
			c = { 'clang-format' },
			java = { 'google-java-format' },
			lua = { 'stylua' },
			python = { 'isort', 'yapf' },
			tex = { 'latexindent' },
			plaintex = { 'latexindent' },
			javascript = { 'prettier' },
			javascriptreact = { 'prettier' },
			typescript = { 'prettier' },
			typescriptreact = { 'prettier' },
			css = { 'prettier' },
			html = { 'prettier' },
			json = { 'prettier' },
			yaml = { 'prettier' },
			svelte = { 'prettier' },
			r = { 'styler' },
			zig = { 'zigfmt' },
			go = { 'gofmt' },
			haskell = { 'stylish-haskell' },
			markdown = { 'mdformat' },
			['_'] = { 'trim_whitespace' },
		},
		formatters = {
			prettier = {
				append_args = { '--use-tabs', '--tab-width', '4' },
			},
			yapf = {
				prepend_args = { '--style={based_on_style: pep8, use_tabs: true, indent_width: 4}' },
			},
		},
		default_format_opts = {
			async = true,
			lsp_format = 'fallback',
		},
		notify_no_formatters = true,
	},
}
