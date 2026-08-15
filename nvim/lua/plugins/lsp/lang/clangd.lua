return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        cmd = {
          "clangd",
          "--compile-commands-dir=.",
          "--completion-style=detailed",
          "--header-insertion=iwyu",
          "--pch-storage=memory",
          "--clang-tidy",
          "--background-index",
          "--function-arg-placeholders",
        },
        filetypes = { "c", "cpp" },
        root_markers = { "compile_commands.json", ".clang-format", ".clangd", ".git" },
      },
    },
  },
}
