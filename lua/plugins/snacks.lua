return {
  {
    "snacks.nvim",
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
            hidden = true, -- dotfiles in the explorer tree
            ignored = true, -- optional: also show gitignored files
          },
          files = {
            hidden = true, -- dotfiles in <leader>ff / smart find
          },
          grep = {
            hidden = true,
          },
        },
      },
    },
  },
}
