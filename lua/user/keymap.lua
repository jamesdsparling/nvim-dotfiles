local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Leader key -> Space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- nav
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-q>", ":Bdelete<cr>", opts)
keymap("n", "qq", ":w|Bdelete<cr>")

-- resize
keymap("n", "<Up>", ":resize -1<cr>", opts)
keymap("n", "<Down>", ":resize +1<cr>", opts)
keymap("n", "<Left>", ":vertical resize -1<cr>", opts)
keymap("n", "<Right>", ":vertical resize +1<cr>", opts)

-- buffers
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)

-- move line(s)
keymap("n", "<S-j>", ":m .+1<cr>==", opts)
keymap("n", "<S-k>", ":m .-2cr>==", opts)
keymap("v", "<S-j>", ":m '>+1<cr>gv=gv", opts)
keymap("v", "<S-k>", ":m '<-2<cr>gv=gv", opts)

-- tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- indent
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- paste & keep clipboard
keymap("v", "p", '"_dP', opts)

-- telescope
keymap("n", "<leader>F", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)

-- bufferline
keymap("n", "'", ":BufferLinePick<cr>", opts)
keymap("n", "q;", ":BufferLinePickClose<cr>", opts)

-- hop
keymap("", ";", "<cmd>HopWord<cr>")

-- lsp
keymap("n", "<leader>w", "<cmd>lua vim.lsp.buf.formatting()<cr>")

-- other
keymap("n", "?", ":noh<cr>", opts) -- Clear search highlight
keymap("n", "q:", "<nop>", opts)

