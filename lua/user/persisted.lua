local status_ok, persisted = pcall(require, "persisted")
if not status_ok then
	return
end

persisted.setup({
	autoload = true,
	allowed_dirs = { "~/.config/", "~/projects/" },
	before_save = function()
		pcall(vim.cmd, "NvimTreeClose")
	end,
	before_source = function()
		pcall(vim.cmd, "Alpha")
	end,
})
