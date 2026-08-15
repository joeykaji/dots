return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      svelte = {
        capabilities = require("blink.cmp").get_lsp_capabilities(nil, true),
        on_attach = function(client)
          vim.api.nvim_create_autocmd("BufWritePost", {
            pattern = { "*.js", "*.ts" },
            callback = function(ctx)
              client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
            end,
          })
        end,
      },
    },
  },
}
