-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function set_snacks_hl()
  vim.api.nvim_set_hl(0, "SnacksIndentYellow", { fg = "#3d3420", nocombine = true })
  vim.api.nvim_set_hl(0, "SnacksIndentViolet", { fg = "#2e2040", nocombine = true })
  vim.api.nvim_set_hl(0, "SnacksIndentBlue", { fg = "#1a2a3d", nocombine = true })
  vim.api.nvim_set_hl(0, "SnacksIndentScopeYellow", { fg = "#ffcb8b", nocombine = true })
  vim.api.nvim_set_hl(0, "SnacksIndentScopeViolet", { fg = "#c792ea", nocombine = true })
  vim.api.nvim_set_hl(0, "SnacksIndentScopeBlue", { fg = "#82aaff", nocombine = true })
end

set_snacks_hl()

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_snacks_hl,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.list = true
    vim.opt_local.listchars = { lead = "·" }
  end,
})
