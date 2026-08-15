return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "saghen/blink.cmp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    -- diagnostic signs
    local signs = { Error = "❌", Warn = "⚠️", Hint = "󰠠 ", Info = "💭" }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- shared keymaps on every lsp attach
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, vim.tbl_extend("force", opts, { desc = desc }))
        end

        map("gR", "<cmd>Telescope lsp_references<CR>",       "Show LSP references")
        map("gD", vim.lsp.buf.declaration,                   "Go to declaration")
        map("gd", "<cmd>Telescope lsp_definitions<CR>",      "Show LSP definitions")
        map("gi", "<cmd>Telescope lsp_implementations<CR>",  "Show LSP implementations")
        map("gt", "<cmd>Telescope lsp_type_definitions<CR>", "Show LSP type definitions")
        map("<leader>rn", vim.lsp.buf.rename,                "Smart rename")
        map("<leader>D",  "<cmd>Telescope diagnostics bufnr=0<CR>", "Buffer diagnostics")
        map("<leader>d",  vim.diagnostic.open_float,         "Line diagnostics")
        map("[d", vim.diagnostic.goto_prev,                  "Prev diagnostic")
        map("]d", vim.diagnostic.goto_next,                  "Next diagnostic")
        map("K",  vim.lsp.buf.hover,                         "Hover docs")
        map("<leader>rs", "<cmd>LspRestart<CR>",             "Restart LSP")

        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action,
          vim.tbl_extend("force", opts, { desc = "Code actions" }))
      end,
    })

    -- default handler — lang/ files override per server
    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = require("blink.cmp").get_lsp_capabilities(nil, true),
          })
        end,
        ["clangd"]  = function() end,
        ["pyright"] = function() end,
        ["ruff"]    = function() end,
        ["lua_ls"]  = function() end,
        ["cmake"]   = function() end,
      },
    })
  end,
}
