return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "[+]",
          package_pending = "[~]",
          package_uninstalled = "[-]",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        -- Web technologies
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "emmet_ls",
        -- Scripting languages
        "lua_ls",
        "ruff_lsp",
        -- Systems programming
        "clangd",
        "rust_analyzer",
        -- Modern compiled languages
        "gopls",
        -- JVM languages
        "jdtls",
        "kotlin_language_server",
        -- Other popular languages
        "omnisharp",
        -- Data and API
        "graphql",
        "prismals",
        "dockerls",
        "jsonls",
        "marksman",
        "bashls",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettierd",
        "prettier",
        "stylua",
        "ruff",
        "black",
        "clang-format",
        "rustfmt",
        "goimports",
        "google-java-format",
        "ktlint",
        "hadolint",
        "shfmt",
        "taplo",
        -- linter
        "eslint_d",
        "ruff",
        "golangci-lint",
        "checkstyle",
        "ktlint",
        "hadolint",
      },
    })
  end,
}
