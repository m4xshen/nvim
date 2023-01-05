local function map(mode, lhs, rhs, opts)
   opts.noremap = true;
   vim.keymap.set(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "
map({ "n", "v" }, "<Space>", "", { silent = true })

local builtin = require("telescope.builtin")
map("n", "<Leader>ff", builtin.find_files, {})
map("n", "<Leader>fg", builtin.live_grep, {})
map("n", "<Leader>fb", builtin.buffers, {})
map("n", "<Leader>fh", builtin.help_tags, {})

-- leader movements
map("n", "<Leader>w", ":write<CR>", { silent = true })
map("n", "<Leader>s", ":source %<CR>", { silent = true })
map("n", "<Leader>v", ":edit $MYVIMRC<CR>", { silent = true })
map("n", "<Leader>h", ":bo vert h ", {})
map("n", "<Leader>t", ":vs<CR>:terminal<CR>i", {})
map("n", "<Leader>l", ":Lexplore<CR>", { silent = true })
map("n", "<Leader>m", ":make<CR>", { silent = true })

-- manage session
-- map("n", "<Leader>ss", ":mksession ~/.vim_manual_session.vim<CR>", {})
-- map("n", "<Leader>sl", ":source ~/.vim_manual_session.vim<CR>", {})

-- argument list
map("n", "<Leader>al", ":args<CR>", { silent = true })
map("n", "<Leader>aa", ":argadd ", {})
map("n", "<Leader>ac", ":argadd %<CR>:args<CR>", {})
map("n", "<Leader>ad", ":argdelete ", {})
map("n", "<Leader>an", ":next<CR>:args<CR>", { silent = true })
map("n", "<Leader>ap", ":previous<CR>:args<CR>", { silent = true })

-- buffer list
map("n", "<Leader>bl", ":ls<CR>", {})
map("n", "<Leader>ba", ":badd ", {})
map("n", "<Leader>bn", ":bnext<CR>", {})
map("n", "<Leader>bp", ":bprev<CR>", {})

-- quickfix list
map("n", "<Leader>co", ":copen<CR>", {})
map("n", "<Leader>cc", ":cclose<CR>", {})
map("n", "<Leader>cn", ":cnext<CR>", {})
map("n", "<Leader>cp", ":cprevious<CR>", {})
map("n", "<Leader>cf", ":cfirst<CR>", {})
map("n", "<Leader>cl", ":clast<CR>", {})

-- center the screen after jump
map("n", "<C-u>", "<C-u>zz", {})
map("n", "<C-d>", "<C-d>zz", {})
map("n", "<C-b>", "<C-b>zz", {})
map("n", "<C-f>", "<C-f>zz", {})

-- move between windows
map("n", "<C-k>", "<C-w>k", {})
map("n", "<C-j>", "<C-w>j", {})
map("n", "<C-h>", "<C-w>h", {})
map("n", "<C-l>", "<C-w>l", {})

-- block movements
map("v", "K", ":m'<-2<CR>gv=gv", { silent = true }) -- up
map("v", "J", ":m'>+1<CR>gv=gv", { silent = true }) -- down

-- block arrow key XD
map({"", "!"}, "<Right>", "", {})
map({"", "!"}, "<Left>", "", {})
map({"", "!"}, "<Up>", "", {})
map({"", "!"}, "<Down>", "", {})
