return {
  "folke/snacks.nvim",
  opts = {
    indent = {
      indent = {
        hl = {
          "SnacksIndentYellow",
          "SnacksIndentViolet",
          "SnacksIndentBlue",
        },
      },
      scope = {
        hl = {
          "SnacksIndentScopeYellow",
          "SnacksIndentScopeViolet",
          "SnacksIndentScopeBlue",
        },
        treesitter = { enabled = true },
      },
    },
  },
}
