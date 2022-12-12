require "settings"
require "mappings"
require "autocmds"
require "plugins"
require "lsp"

-- plugin setup
require("catppuccin").setup {
  color_overrides = {
    mocha = {
      base = "#11111B"
    }
  }
}
require "lualine".setup {
  options = {
    theme = "catppuccin",
    globalstatus = true,
  }
}
require "gitsigns".setup {}
require "nvim-treesitter.configs".setup {
  auto_install = true,
  ensure_installed = { "c", "cpp", "lua", "vim", "javascript",
    "html", "css", "bash", "comment", "help", "tsx" },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
require "autoclose".setup {}
