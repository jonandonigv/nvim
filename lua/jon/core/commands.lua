vim.api.nvim_create_user_command("Run", function(opts)
  vim.cmd("split | terminal " .. opts.args)
end, { nargs = "+", complete = "shellcmd" })
