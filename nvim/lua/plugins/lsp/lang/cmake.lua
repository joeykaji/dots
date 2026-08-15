return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cmake = {
        capabilities = require("blink.cmp").get_lsp_capabilities(nil, true),
      },
    },
  },
}

