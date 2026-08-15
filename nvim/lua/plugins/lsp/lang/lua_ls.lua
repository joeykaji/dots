return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        capabilities = require("blink.cmp").get_lsp_capabilities(nil, true),
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            completion = { callSnippet = "Replace" },
            workspace = {
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
      },
    },
  },
}
