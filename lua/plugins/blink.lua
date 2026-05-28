return {
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
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
