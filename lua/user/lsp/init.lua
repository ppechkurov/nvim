local status_ok, nvim_lsp = pcall(require, "lspconfig")
if not status_ok then
	return
end

nvim_lsp.tsserver.setup({
	on_attach = require("user.lsp.handlers").on_attach,
	capabilities = require("user.lsp.handlers").capabilities,
})

nvim_lsp.sumneko_lua.setup({
	on_attach = require("user.lsp.handlers").on_attach,
	capabilities = require("user.lsp.handlers").capabilities,
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},

			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
		},
	},
})

--[[ require("user.lsp.lsp-installer") ]]
require("user.lsp.null-ls")
--[[ require("user.lsp.handlers").setup() ]]
