return {
	{
		"github/copilot.vim",
		event = "VimEnter",
		config = function()
			vim.cmd("source ~/.config/nvim/extra_conf.vim")
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_filetypes = { ["*"] = true }
			vim.api.nvim_set_keymap(
				"i",
				"<Tab>",
				'copilot#Accept("<Tab>")',
				{ silent = true, expr = true, script = true }
			)
		end,
	},
}
