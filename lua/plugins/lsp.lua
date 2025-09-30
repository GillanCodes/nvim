-- return {
-- 	{
-- 		"williamboman/mason.nvim",
-- 		config = function()
-- 			require("mason").setup()
-- 		end,
-- 	},
-- 	{
-- 		"williamboman/mason-lspconfig.nvim",
-- 		config = function()
-- 			require("mason-lspconfig").setup({
-- 				ensure_installed = { "lua_ls", "ts_ls", "emmet_ls", "phpactor" },
-- 			})
-- 		end,
-- 	},
-- 	{
-- 		"neovim/nvim-lspconfig",
-- 		config = function()
-- 			local lspconfig = require("lspconfig")
-- 			local capabilities = {
-- 				textDocument = {
-- 					foldingRange = {
-- 						dynamicRegistration = false,
-- 						lineFoldingOnly = true,
-- 					},
-- 				},
-- 			}
--
-- 			capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
-- 			-- capabilities = require('cmp_nvim_lsp').default_capabilities()
-- 			lspconfig.lua_ls.setup({
-- 				capabilities = capabilities,
-- 			})
-- 			lspconfig.ts_ls.setup({
-- 				capabilities = capabilities,
-- 			})
--
-- 			lspconfig.emmet_ls.setup({
-- 				capabilities = capabilities,
-- 				filetypes = {
-- 					"html",
-- 					"css",
-- 					"scss",
-- 					"javascript",
-- 					"javascriptreact",
-- 					"typescript",
-- 					"typescriptreact",
-- 					"jsx",
-- 					"tsx",
-- 				},
-- 				init_options = {
-- 					jsx = {
-- 						options = {
-- 							["jsx.enabled"] = true,
-- 						},
-- 					},
-- 				},
-- 			})
--
-- 			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
-- 			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- 			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
-- 		end,
-- 	},
-- }

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "emmet_ls", "phpactor" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()

			-- Add folding capabilities
			capabilities.textDocument.foldingRange = {
				dynamicRegistration = false,
				lineFoldingOnly = true,
			}

			-- Merge with blink.cmp capabilities if available
			local has_blink, blink = pcall(require, "blink.cmp")
			if has_blink then
				capabilities = blink.get_lsp_capabilities(capabilities)
			end

			-- Lua LSP
			vim.lsp.config("lua_ls", {
				cmd = { "lua-language-server" },
				root_markers = {
					".luarc.json",
					".luarc.jsonc",
					".luacheckrc",
					".stylua.toml",
					"stylua.toml",
					"selene.toml",
					"selene.yml",
					".git",
				},
				capabilities = capabilities,
			})

			-- TypeScript LSP
			vim.lsp.config("ts_ls", {
				cmd = { "typescript-language-server", "--stdio" },
				root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
				capabilities = capabilities,
			})

			-- Emmet LSP
			vim.lsp.config("emmet_ls", {
				cmd = { "emmet-ls", "--stdio" },
				root_markers = { ".git", "package.json" },
				filetypes = {
					"html",
					"css",
					"scss",
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
				},
				capabilities = capabilities,
			})

			-- Phpactor LSP
			vim.lsp.config("phpactor", {
				cmd = { "phpactor", "language-server" },
				root_markers = { "composer.json", ".git" },
				capabilities = capabilities,
			})

			-- Enable LSP servers
			vim.lsp.enable({ "lua_ls", "ts_ls", "emmet_ls", "phpactor" })
		end,
	},
}
