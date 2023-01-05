vim.api.nvim_create_autocmd("CmdlineEnter", { command = "set hlsearch"})
vim.api.nvim_create_autocmd("CmdlineLeave", { command = "set nohlsearch"})

vim.api.nvim_create_autocmd("BufEnter",
   { command = "setlocal formatoptions-=cro" }) -- no auto comment

vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.c" },
   callback = function()
      -- vim.opt_local.makeprg = "gcc *.c"
      vim.keymap.set("n", "<Leader>e", ":terminal ./a.out<CR>", { silent = true })
   end
})

vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.cpp" },
   callback = function()
      vim.opt_local.makeprg = "g++ %"
      -- vim.keymap.set("n", "<Leader>e", ":!make execute<CR>", { silent = true })
      vim.keymap.set("n", "<Leader>e", ":terminal ./a.out<CR>", { silent = true })
   end
})

vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.js" },
   callback = function()
      vim.opt_local.makeprg = "node %"
   end
})

vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.py" },
   callback = function()
      vim.opt_local.makeprg = "python %"
   end
})

vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.tex" },
   callback = function()
      vim.opt_local.makeprg = "xelatex"
      vim.keymap.set("n", "<Leader>e", ":!zathura " ..
         vim.fn.expand("%"):gsub(".tex", ".pdf&<CR><CR>"), { silent = true })
   end
})

vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.lua" },
   callback = function()
      vim.opt.shiftwidth = 3
      vim.opt.tabstop = 3
      vim.opt.softtabstop = 3
   end
})
