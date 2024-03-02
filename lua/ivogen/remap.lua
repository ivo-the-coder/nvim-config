vim.g.mapleader = " "

-- View folder current file is in ("project view")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Centralise view when using page down/up and search next/prev term
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste onto something without losing current register contents
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Tab control keybinds
vim.keymap.set('n', '<leader>tn', ':tabnew<cr>')
vim.keymap.set('n', '<leader>to', ':tabonly<cr>')
vim.keymap.set('n', '<leader>tc', ':tabclose<cr>')
vim.keymap.set('n', '<leader>tm', ':tabmove')
vim.keymap.set('n', '<leader>tg', ':tabnext')

-- Change directory to directory of current file
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<cr>:pwd<cr>')
