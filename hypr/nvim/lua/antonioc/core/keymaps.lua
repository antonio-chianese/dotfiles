vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Neovim mods
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "kj", "<ESC>", { desc = "Exit insert mode with kj" })

--Neovim edit text
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Window managment
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sc", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Tab key
keymap.set("n", "<Tab>", ">>", { desc = "Indent code" })
keymap.set("n", "<S-Tab>", "<<", { desc = "Indent code" })
keymap.set("v", "<Tab>", ">gv", { desc = "Indent code" })
keymap.set("v", "<S-Tab>", "<gv", { desc = "Indent code" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>et", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<Space>1", "<cmd>BufferLineGoToBuffer 1<CR>")
keymap.set("n", "<Space>2", "<cmd>BufferLineGoToBuffer 2<CR>")
keymap.set("n", "<Space>3", "<cmd>BufferLineGoToBuffer 3<CR>")
keymap.set("n", "<Space>4", "<cmd>BufferLineGoToBuffer 4<CR>")
keymap.set("n", "<Space>5", "<cmd>BufferLineGoToBuffer 5<CR>")
keymap.set("n", "<Space>6", "<cmd>BufferLineGoToBuffer 6<CR>")
keymap.set("n", "<Space>7", "<cmd>BufferLineGoToBuffer 7<CR>")
keymap.set("n", "<Space>8", "<cmd>BufferLineGoToBuffer 8<CR>")
keymap.set("n", "<Space>9", "<cmd>BufferLineGoToBuffer 9<CR>")
keymap.set("n", "tc", ":tabclose<Return>", opts)

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

-- VimTex Inkscape
