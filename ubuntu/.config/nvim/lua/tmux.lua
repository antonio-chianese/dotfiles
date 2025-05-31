function Switch_tmux_pane(direction)
	local tmux_map = { h = 'L', j = 'D', k = 'U', l = 'R' }
	vim.fn.system('tmux selectp -' .. tmux_map[direction])
end

if os.getenv 'TMUX' ~= nil then
	function Move(direction)
		local old_winnr = vim.fn.winnr()
		vim.cmd.wincmd(direction)
		if vim.fn.winnr() ~= old_winnr then
			return
		end
		Switch_tmux_pane(direction)
	end
else
	function Move(direction)
		vim.cmd.wincmd(direction)
	end
end

local all_modes = { 'n', 'i', 'c', 'v', 'x', 's', 'o', 't', 'l' }
vim.keymap.set(all_modes, '<A-h>', function()
	Move 'h'
end)
vim.keymap.set(all_modes, '<A-l>', function()
	Move 'l'
end)
vim.keymap.set(all_modes, '<A-k>', function()
	Move 'k'
end)
vim.keymap.set(all_modes, '<A-j>', function()
	Move 'j'
end)
