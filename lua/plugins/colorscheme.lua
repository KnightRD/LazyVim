return {
  {
    "oxfist/night-owl.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Re-apply after every colorscheme load (LazyVim calls it again later)
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "night-owl",
        callback = function()
          -- make \n, \t, etc. match %c, %d, etc.
          vim.api.nvim_set_hl(0, "@string.escape", { link = "@character.printf" })
        end,
      })

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
