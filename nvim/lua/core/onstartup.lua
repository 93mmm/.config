vim.api.nvim_create_autocmd(
  "VimEnter", {
	callback = function()
		vim.cmd("Neotree toggle") -- toggle NeoTree on start
	end,
})
