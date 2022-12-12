vim.opt.path = ".,/usr/include,,/home/max/Documents**,/home/max/.config**,\
    /home,/opt/ros/noetic/include"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false -- use Lualine.nvim instead
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.swapfile = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.showtabline = 2
vim.opt.laststatus = 3 -- global statusline
vim.opt.guicursor = "" -- disable cursor-styling
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.cmd.colorscheme "catppuccin"
