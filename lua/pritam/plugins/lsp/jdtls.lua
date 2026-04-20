return {
	"mfussenegger/nvim-jdtls",
	enabled = false,
	ft = "java",
	config = function()
		local jdtls = require("jdtls")
		local jdtls_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
		local launcher = vim.fn.glob(jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")
		local config_dir = jdtls_path .. "/config_mac_arm"

		-- Per-project workspace cache
		local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
		local workspace_dir = vim.fn.expand("~/.cache/jdtls/workspace/") .. project_name

		local config = {
			offset_encoding = "utf-16",
			cmd = {
				"java",
				"-Declipse.application=org.eclipse.jdt.ls.core.id1",
				"-Dosgi.bundles.defaultStartLevel=4",
				"-Declipse.product=org.eclipse.jdt.ls.core.product",
				"-Dlog.protocol=true",
				"-Dlog.level=ALL",
				"-Xmx1g",
				"--add-modules=ALL-SYSTEM",
				"--add-opens", "java.base/java.util=ALL-UNNAMED",
				"--add-opens", "java.base/java.lang=ALL-UNNAMED",
				"-jar", launcher,
				"-configuration", config_dir,
				"-data", workspace_dir,
			},
			root_dir = jdtls.setup.find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),
			settings = {
				java = {
					signatureHelp = { enabled = true },
					contentProvider = { preferred = "fernflower" },
					completion = {
						favoriteStaticMembers = {},
					},
					sources = {
						organizeImports = {
							starThreshold = 9999,
							staticStarThreshold = 9999,
						},
					},
				},
			},
			init_options = {
				bundles = {},
			},
		}

		-- Start or attach jdtls whenever a Java buffer is opened
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "java",
			callback = function()
				jdtls.start_or_attach(config)
			end,
		})

		-- Start immediately for the current buffer if it's already java
		if vim.bo.filetype == "java" then
			jdtls.start_or_attach(config)
		end
	end,
}
