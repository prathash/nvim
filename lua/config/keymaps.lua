vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Save & Quit
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)

-- Window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)


-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)


vim.keymap.set("n", "<leader>f", vim.cmd.Ex)

-- for set path to currant folder
vim.keymap.set('n', '<leader>cd', ':lcd %:p:h<CR>', { noremap = true, silent = true, desc = 'CD to file dir' })
-- Optional: Visual mode for pasting
vim.api.nvim_set_keymap('v', '<C-v>', '"+p', { noremap = true, silent = true })
-- Disable arrow keys in all common modes (normal, insert, visual)
for _, mode in ipairs({ 'n', 'i', 'v' }) do
  vim.keymap.set(mode, '<Up>', '<Nop>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<Down>', '<Nop>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<Left>', '<Nop>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<Right>', '<Nop>', { noremap = true, silent = true })
end


-- Move current line down
vim.keymap.set("n", "<A-j>", "<cmd>move .+1<cr>==", {
    desc = "Move line down",
})

-- Move current line up
vim.keymap.set("n", "<A-k>", "<cmd>move .-2<cr>==", {
    desc = "Move line up",
})

-- Move selected lines down
vim.keymap.set("v", "<A-j>", ":move '>+1<cr>gv=gv", {
    desc = "Move selection down",
})

-- Move selected lines up
vim.keymap.set("v", "<A-k>", ":move '<-2<cr>gv=gv", {
    desc = "Move selection up",
})

