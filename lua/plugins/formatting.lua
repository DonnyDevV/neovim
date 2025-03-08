return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        -- Web technologies
        javascript = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
        javascriptreact = { "prettierd", "prettier" },
        typescriptreact = { "prettierd", "prettier" },
        svelte = { "prettierd", "prettier" },
        html = { "prettierd", "prettier" },
        css = { "prettierd", "prettier" },
        json = { "prettierd", "prettier" },
        yaml = { "prettierd", "prettier" },
        markdown = { "prettierd", "prettier" },
        graphql = { "prettierd", "prettier" },
        -- Scripting languages
        lua = { "stylua" },
        python = { "ruff_format" },
        -- Systems programming
        c = { "clang_format" },
        cpp = { "clang_format" },
        rust = { "rustfmt" },
        -- Modern compiled languages
        go = { "gofmt", "goimports" },
        -- JVM languages
        java = { "google_java_format" },
        kotlin = { "ktlint" },
        -- Data and API
        docker = { "hadolint" },
        bash = { "shfmt" },
        sh = { "shfmt" },
        -- Additional formats
        toml = { "taplo" },
      },
      formatters = {
        clang_format = {
          args = { "--style={BasedOnStyle: LLVM, IndentWidth: 4, UseTab: Never, ColumnLimit: 120}" },
        },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })
    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
