vim.g.mapleader = " "

-- leader movements
vim.keymap.set("n", "<Leader>w", ":write<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>s", ":source %<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>v", ":edit $MYVIMRC<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>f", ":find ", { noremap = true })
vim.keymap.set("n", "<Leader>h", ":bo vert h ", { noremap = true })
vim.keymap.set("n", "<Leader>t", ":vs<CR>:terminal<CR>i", { noremap = true })
vim.keymap.set("n", "<Leader>l", ":Lexplore<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>m", ":make<CR>", { noremap = true , silent = true })

-- quickfix list
vim.keymap.set("n", "<Leader>co", ":copen<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>cc", ":cclose<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>cn", ":cnext<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>cp", ":cprevious<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>cf", ":cfirst<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>cl", ":clast<CR>", { noremap = true })

-- bash-like movements
vim.keymap.set("c", "<C-a>", "<Home>", { noremap = true })

-- move between windows
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })

-- block movements
vim.keymap.set("v", "K", ":m'<-2<CR>gv=gv", { noremap = true , silent = true }) -- up
vim.keymap.set("v", "J", ":m'>+1<CR>gv=gv", { noremap = true , silent = true }) -- down

-- block arrow key XD
vim.keymap.set("", "<Right>", "", { noremap = true })
vim.keymap.set("", "<Left>", "", { noremap = true })
vim.keymap.set("", "<Up>", "", { noremap = true })
vim.keymap.set("", "<Down>", "", { noremap = true })
vim.keymap.set("!", "<Right>", "", { noremap = true })
vim.keymap.set("!", "<Left>", "", { noremap = true })
vim.keymap.set("!", "<Up>", "", { noremap = true })
vim.keymap.set("!", "<Down>", "", { noremap = true })
