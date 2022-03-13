local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("i", "<c-k>", "<ESC>", opts)

-- Navigate buffers
keymap("n", "<S-l>", "$l", opts)
keymap("n", "<S-h>", "0", opts)
keymap("n","<s-tab>","<c-w>w",opts)
keymap("n","<S-Left>",":bprevious<CR>",opts)
keymap("n","<S-Right>",":bnext<CR>",opts)
keymap("n","<c-t>",":enew<CR>",opts)
keymap("n","<c-n>",":NvimTreeToggle<CR>",opts)
keymap("n","<c-c>",":NvimTreeClose<CR>",opts)
keymap("n","<c-w>",":Bdelete!<CR>",opts)
keymap('n',"<c-f>",":Format<CR>",opts);
vim.cmd "set ve+=onemore"
keymap("v","d",'"_d',opts);
keymap("v","dd",'"_dd',opts);
keymap("n","d",'"_d',opts);
keymap("n","<c-a>",'ggVG',opts);
