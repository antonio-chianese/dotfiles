return {
	'L3MON4D3/LuaSnip',
	version = '*',
	build = 'make install_jsregexp',
	opts = function()
		local types = require 'luasnip.util.types'

		return {
			updateevents = 'TextChanged,TextChangedI',
			region_check_events = 'CursorMoved,CursorHold,InsertEnter',
			delete_check_events = 'TextChanged,InsertLeave',
			ext_opts = {
				[types.choiceNode] = {
					active = {
						virt_text = { { '●', 'GruvlukeOrange' } },
					},
				},
				[types.insertNode] = {
					active = {
						virt_text = { { '●', 'GruvlukeBlue' } },
					},
				},
			},
		}
	end,
	config = function(_, opts)
		local luasnip = require 'luasnip'
		luasnip.config.setup(opts)

		luasnip.config.set_config({
			enable_autosnippets = true,
			store_selection_keys = "<Tab>",
		})

		require('luasnip.loaders.from_vscode').lazy_load { paths = { './snippets' } }
		require('luasnip.loaders.from_lua').lazy_load { paths = { './latex_snippets' } }

		vim.keymap.set({ "i" }, "<Tab>", function()
			if luasnip.expandable() then
				luasnip.expand()
			elseif luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
			end
		end, { silent = true })
	end,
}
