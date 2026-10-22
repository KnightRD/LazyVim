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

-- vtsls: suppress semantic tokens — its range-tokens handling corrupts
-- narrowing state on freshly rebuilt programs, producing phantom TS errors
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "vtsls" then
      client.server_capabilities.semanticTokensProvider = nil
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.expandtab = true
  end,
})
