function ColorScheeeemin(color)
	color = color or "github_dark"
	-- color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
end

vim.cmd("highlight Normal ctermbg=None")
vim.cmd("highlight NonText ctermbg=None")

ColorScheeeemin()
