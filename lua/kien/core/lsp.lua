require("mason").setup()

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format Local buffer" })
vim.keymap.set("n", "df", vim.diagnostic.open_float, { desc = "Show line diagnostics" })

vim.diagnostic.config({ virtual_text = true })

local capabilities = vim.lsp.protocol.make_client_capabilities()

-- capabilities = vim.tbl_deep_extend("force", capabilities, require("mini.completion").get_lsp_capabilities())

capabilities.textDocument.completion.completionItem = {
	documentationFormat = { "markdown", "plaintext" },
	snippetSupport = true,
	preselectSupport = true,
	insertReplaceSupport = true,
	labelDetailsSupport = true,
	deprecatedSupport = true,
	commitCharactersSupport = true,
	tagSupport = { valueSet = { 1 } },
	resolveSupport = {
		properties = {
			"documentation",
			"detail",
			"additionalTextEdits",
		},
	},
}

-- local on_init = function(client, _)
-- 	if vim.fn.has("nvim-0.11") ~= 1 then
-- 		if client.supports_method("textDocument/semanticTokens") then
-- 			client.server_capabilities.semanticTokensProvider = nil
-- 		end
-- 	else
-- 		if client:supports_method("textDocument/semanticTokens") then
-- 			client.server_capabilities.semanticTokensProvider = nil
-- 		end
-- 	end
-- end

vim.lsp.config("*", { capabilities = capabilities })

local lua_lsp_settings = {
	Lua = {
		runtime = { version = "LuaJIT" },
		workspace = {
			library = {
				vim.fn.expand("$VIMRUNTIME/lua"),
				vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
				vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
				"${3rd}/luv/library",
			},
		},
	},
}

vim.lsp.config("lua_ls", {
	settings = lua_lsp_settings,
})
--
-- local servers = {
-- 	html = {},
-- 	cssls = {},
-- 	vtsls = {},
-- 	intelephense = {
-- 		root_markers = { "index.php", ".git", "composer.json" },
-- 		settings = {
-- 			files = {
-- 				associations = { "*.php" },
-- 				maxSize = 1000000,
-- 			},
-- 			environment = {
-- 				includePaths = { "vendor" },
-- 			},
-- 		},
-- 	},
-- 	ts_ls = {},
-- 	emmet_language_server = {
-- 		filetypes = {
-- 			"astro",
-- 			"css",
-- 			"eruby",
-- 			"html",
-- 			"htmlangular",
-- 			"htmldjango",
-- 			"javascriptreact",
-- 			"less",
-- 			"pug",
-- 			"sass",
-- 			"scss",
-- 			"svelte",
-- 			"templ",
-- 			"typescriptreact",
-- 			"vue",
-- 			"php",
-- 		},
-- 		init_options = {
-- 			includeLanguages = {},
-- 			excludeLanguages = {},
-- 			extensionsPath = {},
-- 			preferences = {},
-- 			showAbbreviationSuggestions = true,
-- 			showExpandedAbbreviation = "always",
-- 			showSuggestionsAsSnippets = true,
-- 			syntaxProfiles = {},
-- 			variables = {},
-- 		},
-- 	},
-- 	pyright = {},
-- 	clangd = {},
-- 	tailwindcss = {},
-- 	jsonls = {},
-- 	gols = {},
-- }
--
-- for name, opts in pairs(servers) do
-- 	vim.lsp.config(name, opts)
-- 	vim.lsp.enable(name)
-- end
