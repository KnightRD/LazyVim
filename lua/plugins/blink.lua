return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        ghost_text = { enabled = false },
      },
      sources = {
        -- no completion in comments; deliberately omits LazyVim's default
        -- "snippets" and "buffer" sources everywhere else
        default = function()
          local success, node = pcall(vim.treesitter.get_node)
          if success and node and vim.tbl_contains({ "comment", "line_comment", "block_comment" }, node:type()) then
            return {}
          end
          return { "lsp", "path" }
        end,
        per_filetype = {},
      },
    },
  },
}
