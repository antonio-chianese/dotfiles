if not table.unpack then
	table.unpack = unpack
end

vim.loader.enable()

require 'utils'

vim.cmd 'colorscheme gruvluke'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system {
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		lazypath,
	}
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins', {
	defaults = {
		lazy = true,
	},
	-- dev = {
	-- 	path = '/home/luke/src',
	-- 	fallback = false,
	-- },
	install = {
		colorscheme = { 'gruvluke' },
	},
	change_detection = {
		enabled = false,
	},
	ui = {
		border = 'rounded',
		backdrop = 100,
	},
	checker = {
		enabled = false,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				'rplugin',
				'gzip',
				'tarPlugin',
				'tutor',
				'zipPlugin',
			},
		},
	},
	profiling = {
		loader = false,
		require = false,
	},
})

require 'filetype'
require 'options'
require 'keymap'
require 'tmux'
require 'marks'
require 'autocmds'
