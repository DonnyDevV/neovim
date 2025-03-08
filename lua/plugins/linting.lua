return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      -- Web technologies
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      svelte = { "eslint_d" },
      -- Scripting languages
      python = { "ruff" }, -- ruff is faster and more comprehensive than pylint
      -- Systems programming
      rust = { "cargo clippy" },
      -- Modern compiled languages
      go = { "golangcilint" },
      -- JVM languages
      java = { "checkstyle" },
      kotlin = { "ktlint" },
      -- Other popular languages
      csharp = { "cspell" }, -- There's no specific C# linter in nvim-lint, using cspell for basic checks
      -- Data and API
      graphql = { "eslint_d" }, -- Assuming you're using ESLint for GraphQL
      dockerfile = { "hadolint" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
