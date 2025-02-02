return {
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		opts = {
			options = {
				theme = "solarized_dark",
				globalstatus = true,
			},
		},
		-- "nvim-lualine/lualine.nvim",
		-- dependencies = { "nvim-tree/nvim-web-devicons" },
		-- config = function()
		-- 	require("lualine").setup({
		-- 		options = {
		-- 			icons_enabled = true,
		-- 			theme = "solarized-osaka",
		-- 			component_separators = { left = "", right = "" },
		-- 			-- component_separators = { left = '|', right = '|'},
		-- 			-- section_separators = { left = '', right = ''},
		-- 			section_separators = { left = "", right = "" },
		-- 			disabled_filetypes = {
		-- 				statusline = {},
		-- 				winbar = {},
		-- 			},
		-- 			ignore_focus = {},
		-- 			always_divide_middle = true,
		-- 			globalstatus = false,
		-- 			refresh = {
		-- 				statusline = 1,
		-- 				tabline = 1,
		-- 				winbar = 1,
		-- 			},
		-- 		},
		-- 		sections = {
		-- 			lualine_a = { "mode" },
		-- 			lualine_b = { "branch", "diff", "diagnostics" },
		-- 			lualine_c = { "filename" },
		-- 			lualine_x = { "encoding", "fileformat", "filetype" },
		-- 			lualine_y = { "progress" },
		-- 			lualine_z = { "location" },
		-- 		},
		-- 		inactive_sections = {
		-- 			lualine_a = {},
		-- 			lualine_b = {},
		-- 			lualine_c = { "filename" },
		-- 			lualine_x = { "location" },
		-- 			lualine_y = {},
		-- 			lualine_z = {},
		-- 		},
		-- 		tabline = {},
		-- 		winbar = {},
		-- 		inactive_winbar = {},
		-- 		extensions = {},
		-- 	})
		-- end,
	},
	{
		"b0o/incline.nvim",
		dependencies = { "craftzdog/solarized-osaka.nvim" },
		event = "BufReadPre",
		priority = 1200,
		config = function()
			local colors = require("solarized-osaka.colors").setup()
			require("incline").setup({
				highlight = {
					groups = {
						InclineNormal = { guibg = colors.magenta500, guifg = colors.base04 },
						InclineNormalNC = { guifg = colors.violet500, guibg = colors.base03 },
					},
				},
				window = { margin = { vertical = 0, horizontal = 1 } },
				hide = {
					cursorline = true,
				},
				render = function(props)
					local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
					if vim.bo[props.buf].modified then
						filename = "[+] " .. filename
					end

					local icon, color = require("nvim-web-devicons").get_icon_color(filename)
					return { { icon, guifg = color }, { " " }, { filename } }
				end,
			})
		end,
	},
}
