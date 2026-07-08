vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Buffer local mappings
		local opts = { buffer = ev.buf, silent = true }
		-- Keymaps
		opts.desc = "Show LSP references"
		vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

		opts.desc = "Go to declaration"
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

		opts.desc = "Show LSP definitions"
		vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

		opts.desc = "Show LSP implementations"
		vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

		opts.desc = "Show LSP type definitions"
		vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

		opts.desc = "See available code actions"
		vim.keymap.set({ "n", "v" }, "<leader>vca", function()
			vim.lsp.buf.code_action()
		end, opts)

		opts.desc = "Smart rename"
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

		opts.desc = "Show buffer diagnostics"
		vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

		opts.desc = "Show line diagnostics"
		vim.keymap.set("n", "df", vim.diagnostic.open_float, opts)

		opts.desc = "Signature Help"
		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, opts)

		opts.desc = "Show documentation for what is under cursor"
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

		opts.desc = "Restart LSP"
		vim.keymap.set("n", "<leader>rs", ":lsp restart<CR>", opts)
	end,
})

local signs = {
	[vim.diagnostic.severity.ERROR] = " ",
	[vim.diagnostic.severity.WARN] = " ",
	[vim.diagnostic.severity.HINT] = "󰠠 ",
	[vim.diagnostic.severity.INFO] = " ",
}

vim.diagnostic.config({
	signs = { text = signs },
	virtual_text = false,
	underline = true, -- Always on
	update_in_insert = false,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = true,
	},
})

local capabilities = vim.lsp.protocol.make_client_capabilities()

local ok, blink = pcall(require, "blink.cmp")
if ok then
	capabilities = blink.get_lsp_capabilities(capabilities)
end

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

vim.lsp.config("*", {
	capabilities = capabilities,
})

local servers = {
	html = {},
	cssls = {
		filetypes = { "css", "scss", "less" },
		init_options = { provideFormatter = true },
		single_file_support = true,
		settings = {
			css = {
				lint = {
					unknownAtRules = "ignore",
				},
				validate = true,
			},
			scss = {
				lint = {
					unknownAtRules = "ignore",
				},
				validate = true,
			},
			less = {
				lint = {
					unknownAtRules = "ignore",
				},
				validate = true,
			},
		},
	},
	vtsls = {},
	intelephense = {
		root_markers = { "index.php", ".git", "composer.json" },
		filetypes = { "php", "blade" },
		settings = {
			files = {
				associations = { "*.php", "*.blade.php" },
				maxSize = 1000000,
			},
			environment = {
				includePaths = { "vendor" },
			},
		},
	},
	emmet_language_server = {
		filetypes = {
			"astro",
			"css",
			"eruby",
			"html",
			"htmlangular",
			"htmldjango",
			"javascriptreact",
			"less",
			"pug",
			"sass",
			"scss",
			"svelte",
			"templ",
			"typescriptreact",
			"vue",
			"blade",
		},
		init_options = {
			includeLanguages = {},
			excludeLanguages = {},
			extensionsPath = {},
			preferences = {},
			showAbbreviationSuggestions = true,
			showExpandedAbbreviation = "always",
			showSuggestionsAsSnippets = true,
			syntaxProfiles = {},
			variables = {},
		},
	},
	pyright = {},
	clangd = {},
	tailwindcss = {
		filetypes = {
			"html",
			"css",
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
			"svelte",
			"vue",
			"astro",
		},
		init_options = {
			userLanguages = {
				astro = "html",
			},
		},
	},
	jsonls = {},
	gols = {
		settings = {
			gopls = {
				analyses = {
					unusedparams = true,
				},
				staticcheck = true,
				gofumpt = true,
			},
		},
	},
	lua_ls = {
		settings = {
			Lua = {
				runtime = { version = "LuaJIT" },
				diagnostics = {
					globals = { "vim" },
				},
				completion = {
					callSnippet = "Replace",
				},
				workspace = {
					library = {
						vim.fn.expand("$VIMRUNTIME/lua"),
						vim.fn.stdpath("data") .. "/site/pack/core/opt/ui/nvchad_types",
						"${3rd}/luv/library",
					},
				},
			},
		},
	},
	-- astro = {
	-- 	filetypes = { "astro" },
	-- 	init_options = {
	-- 		typescript = {
	-- 			tsdk = vim.fn.stdpath("data")
	-- 				.. "/mason/packages/typescript-language-server/node_modules/typescript/lib",
	-- 		},
	-- 	},
	-- },
	rust_analyzer = {},
	laravel_ls = {},
}

for name, opts in pairs(servers) do
	vim.lsp.config(name, opts)
	vim.lsp.enable(name)
end

vim.lsp.enable("phptols")
