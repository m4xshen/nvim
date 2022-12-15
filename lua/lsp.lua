local function on_attach()
   vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
   vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
end

require("lspconfig").clangd.setup({
   on_attach = on_attach,
   capabilities = require("cmp_nvim_lsp").default_capabilities()
})

require("lspconfig").denols.setup({
   on_attach = on_attach,
   capabilities = require("cmp_nvim_lsp").default_capabilities()
})

require("lspconfig").html.setup({
   on_attach = on_attach,
   capabilities = require("cmp_nvim_lsp").default_capabilities()
})

require("lspconfig").cssls.setup({
   on_attach = on_attach,
   capabilities = require("cmp_nvim_lsp").default_capabilities()
})

local cmp = require("cmp")
cmp.setup({
   snippet = {
      expand = function(args)
         require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
      end,
   },
   mapping = cmp.mapping.preset.insert({
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping.select_next_item(),
      ["<S-Tab>"] = cmp.mapping.select_prev_item(),
   }),
   sources = cmp.config.sources({
      { name = "nvim_lsp" },
   }, {
         { name = "buffer" },
      })
})

cmp.setup.cmdline(":", {
   mapping = cmp.mapping.preset.cmdline(),
   sources = cmp.config.sources({ { name = "path" } },
      { { name = "cmdline" } })
})
