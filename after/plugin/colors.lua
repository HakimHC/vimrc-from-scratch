function ColorScheeeemin(color)
	color = color or "nightly"
	-- color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "black" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "black" })
end

vim.cmd("highlight Normal ctermbg=Black")
vim.cmd("highlight NonText ctermbg=Black")

ColorScheeeemin()
