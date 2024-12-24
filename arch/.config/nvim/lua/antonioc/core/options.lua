-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

-- Default options are not included

-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

local g = vim.g -- Global variables
local opt = vim.opt -- Set options (global/buffer/windows-scoped)

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = "a" -- Enable mouse support
opt.clipboard:append("unnamedplus") -- Copy/paste to system clipboard

opt.swapfile = false -- Don't use swapfile
opt.completeopt = "menuone,noinsert,noselect" -- Autocomplete options
opt.lazyredraw = false

-----------------------------------------------------------
-- Netrw UI
-----------------------------------------------------------
vim.cmd("let g:netrw_liststyle = 3") -- Display files in a tree-style list

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true -- Show line number
opt.relativenumber = true -- Show relative number
opt.showmatch = true -- Highlight matching parenthesis
opt.foldmethod = "marker" -- Enable folding (default 'foldmarker')

opt.colorcolumn = "100" -- Line lenght marker at 80 columns
opt.splitright = true -- Vertical split to the right
opt.splitbelow = true -- Horizontal split to the bottom
opt.ignorecase = true -- Ignore case letters when search
opt.smartcase = true -- Ignore lowercase for the whole pattern
opt.wrap = false
opt.linebreak = false -- Wrap on word boundary
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.laststatus = 3 -- Set global statusline
opt.cursorline = true -- Highlights the cursor line
opt.background = "dark" -- Colorscheme set dark (can be either dark or light)
opt.signcolumn = "yes" -- Show sign column so that text doesn't shift

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Shift 4 spaces when tab
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.smartindent = true -- Autoindent new lines
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true -- Enable background buffers
opt.history = 100 -- Remember N lines in history

opt.synmaxcol = 240 -- Max column for syntax highlight
opt.updatetime = 250 -- ms to wait for trigger an event

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------

-- Disable nvim intro
-- opt.shortmess:append "see"

-----------------------------------------------------------
-- Latex
-----------------------------------------------------------

-- opt.spelling = "en_us"
opt.spelllang = "it"
opt.spell = true

-- Create a new Inkscape figure
vim.api.nvim_set_keymap('i', '<C-f>', '<Esc>:silent exec \'.!inkscape-figures create "\'.getline(\'.\').\'" "\'.b:vimtex.root.\'/figures/"\'<CR><CR>:w<CR>', { noremap = true, silent = true })


-- Edit an existing Inkscape figure
vim.api.nvim_set_keymap('n', '<C-f>', ':silent exec \'!inkscape-figures edit "\'.b:vimtex.root.\'/figures/" > /dev/null 2>&1 &\'<CR><CR>:redraw!<CR>', { noremap = true, silent = true })

-----------------------------------------------------------
-- Plugins
-----------------------------------------------------------

vim.api.nvim_set_keymap("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { noremap = true, silent = true }) -- Auto-correction
