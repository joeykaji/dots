return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      graphql = {
        capabilities = require("blink.cmp").get_lsp_capabilities(nil, true),
        filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
      },
    },
  },
}
