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
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
        },
        files = {
          hidden = true,
        },
        grep = {
          hidden = true,
        },
      },
    },
  },
}
