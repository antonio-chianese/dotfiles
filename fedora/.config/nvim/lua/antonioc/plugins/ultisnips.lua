return {
	"Sirver/ultisnips",
	event = { "InsertEnter" },
    ft = "snippets",
	config = function()
		vim.g.UltiSnipsExpandTrigger = "<tab>"
		-- vim.g.UltiSnipsJumpForwardTrigger = "<A-j>j"
		-- vim.g.UltiSnipsJumpBackwardTrigger = "<A-j>k"
        -- vim.g.UltiSnipsVerbose = 1
        end,
}
