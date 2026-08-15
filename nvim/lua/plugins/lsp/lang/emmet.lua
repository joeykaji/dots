return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      emmet_ls = {
        capabilities = require("blink.cmp").get_lsp_capabilities(nil, true),
        filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
      },
    },
  },
}
