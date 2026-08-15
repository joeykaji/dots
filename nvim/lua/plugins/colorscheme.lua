return{
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000, 
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato",
      integrations = {
        cmp = true,
        nvimtree = true,
        telescope = {
          enabled = true,
        },
      },
      term_colors = true,
      custom_highlights = function(colors)
        return {
        Cursor = { fg = colors.text, bg = '#b7bdf8'},
        lCursor = { fg = colors.text, bg = '#b7bdf8'}
        }
      end,
    })
  vim.cmd.colorscheme("catppuccin")
  end
}
