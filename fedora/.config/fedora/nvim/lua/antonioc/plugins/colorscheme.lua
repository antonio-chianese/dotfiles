return {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require("solarized-osaka").setup({
            transparent = true,
            styles = {
                floats = "transparent",
            },
        })
        vim.cmd[[colorscheme solarized-osaka]]
    end
}

-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--         require("catppuccin").setup({
--             transparent_background = true,
--             show_end_of_buffer = true,
--             term_colors = false,
--             styles = {
--                 comments = {"italic"},
--                 functions = {"italic"},
--                 keywords = {"italic"},
--                 strings = {},
--                 variables = {},
--             },
--             integrations = {
--                 treesitter = true,
--                 -- notify = false,
--                 nvimtree = true,
--                 bufferline = true,
--             }
--         })
--         vim.cmd[[colorscheme catppuccin]]
--     end,
-- }

-- return {
-- 	{
-- 		"sainnhe/sonokai",
-- 		priority = 1000,
-- 		config = function()
-- 			vim.g.sonokai_transparent_background = "1"
-- 			vim.g.sonokai_enable_italic = "1"
-- 			vim.g.sonokai_style = "andromeda"
-- 			vim.cmd.colorscheme("sonokai")
-- 		end,
-- 	},
-- }

-- return{
-- "navarasu/onedark.nvim",
-- lazy = false,
-- priority = 1000,
-- config = function()
--   require('onedark').setup {
--     style = 'dark'
--   }
--   require('onedark').load()
-- end,
-- }
