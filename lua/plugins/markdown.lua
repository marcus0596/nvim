return {
  -- Disable markdownlint warnings
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {}, -- disable markdown linting
      },
    },
  },
}
