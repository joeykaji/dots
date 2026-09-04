return {
  {
    "saghen/blink.cmp",
    version = "1.*",

    opts = {
      keymap = {
        preset = "default",

        -- Navigate completion menu
        ["<Tab>"] = {
          "select_next",
          "snippet_forward",
          "fallback",
        },
        ["<S-Tab>"] = {
          "select_prev",
          "snippet_backward",
          "fallback",
        },

        -- Accept completion
        ["<CR>"] = {
          "accept",
          "fallback",
        },

        -- Scroll documentation
        ["<C-d>"] = {
          "scroll_documentation_down",
          "fallback",
        },
        ["<C-u>"] = {
          "scroll_documentation_up",
          "fallback",
        },
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
      },

      completion = {
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },

        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },

        ghost_text = {
          enabled = false,
        },
      },
    },
  },
}
