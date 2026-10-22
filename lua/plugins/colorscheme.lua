return {
  {
    "oxfist/night-owl.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("night-owl").setup({
        italics = false,
      })
      vim.cmd.colorscheme("night-owl")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "night-owl",
    },
  },
}
