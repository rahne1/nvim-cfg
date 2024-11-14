return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mfussenegger/nvim-jdtls",
  },
  config = function()
    local lspconfig = require("lspconfig")

    local jdtls = require("jdtls")

    local os_name
    if vim.fn.has("mac") == 1 then
      os_name = "mac"
    elseif vim.fn.has("unix") == 1 then
      os_name = "linux"
    elseif vim.fn.has("win32") == 1 then
      os_name = "win"
    end

    local jdtls_path = vim.fn.expand("~/.local/share/jdtls")

    local config = {
      cmd = {
        "java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.level=ALL",
        "-Xmx1g",
        "-jar",
        vim.fn.glob(
          jdtls_path .. "/plugins/org.eclipse.equinox.launcher.cocoa.macosx.x86_64_1.2.1100.v20240722-2106.jar"
        ),
        "-configuration",
        jdtls_path .. "/config_macos",
        "-data",
        vim.fn.expand("~/.cache/jdtls/workspace"),
      },
      root_dir = lspconfig.util.root_pattern(".git", "mvnw", "gradlew", "pom.xml", "build.gradle"),
      settings = {
        java = {
          format = {
            enabled = true,
          },
        },
      },
      init_options = {
        bundles = {},
      },
    }

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "java",
      callback = function()
        jdtls.start_or_attach(config)
      end,
    })
  end,
}
