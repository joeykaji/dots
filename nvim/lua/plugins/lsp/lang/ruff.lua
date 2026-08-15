return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff = {
        capabilities = require("blink.cmp").get_lsp_capabilities(nil, true),
        on_attach = function(client)
          -- disable hover in favor of pyright
          client.server_capabilities.hoverProvider = false
        end,
        init_options = {
          settings = {
            fixAll = true,
            organizeImports = true,
          },
        },
      },
    },
  },
}
