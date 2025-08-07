
-- Highlight when yanking (copying) text
-- Try it with `yap` in normal mode
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Terminal
vim.api.nvim_create_autocmd("TermOpen", {
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	callback = function(event)
		-- local buffer = event.buf
		--   buffer.options.number = false
		--   buffer.options.relativenumber = false
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

-- LSP erase logs
vim.api.nvim_create_user_command("LspLogClear", function()
	local lsplogpath = vim.fn.stdpath("state") .. "/lsp.log"
	print(lsplogpath)
	if io.close(io.open(lsplogpath, "w+b")) == false then
		vim.notify("Clearning LSP Log failed.", vim.log.levels.WARN)
	end
end, { nargs = 0 })
