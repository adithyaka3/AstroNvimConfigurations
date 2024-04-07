return function(_, opts)
  require("alpha").setup(opts.config)

  vim.api.nvim_create_autocmd("User", {
    pattern = "LazyVimStarted",
    desc = "Add Alpha dashboard footer",
    once = true,
    callback = function()
      opts.section.footer.val = { "sudo rm -rf /" }
      pcall(vim.cmd.AlphaRedraw)
    end,
  })
end
