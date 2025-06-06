return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				latex = { "latexindent" },
			},
			-- format_on_save = {
			-- 	lsp_fallback = true,
			-- 	async = true,
			-- 	timeout_ms = 1000,
			-- },
		})

        conform.formatters.latex = {
            args = {
                "-l", "/home/antonioc/.indentconfig.yaml"
            }
        }

		vim.keymap.set({ "n", "v" }, "<leader>fmd", function()
			conform.format({
				lsp_fallback = true,
				async = true,
				-- timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
