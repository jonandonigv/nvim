vim.api.nvim_create_user_command("Run", function(opts)
  vim.cmd("split | terminal " .. opts.args)
end, { nargs = "+", complete = "shellcmd" })

-- Make backgroud transparent.
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
  end,
})
