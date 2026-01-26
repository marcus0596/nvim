return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true,
            -- `ignored = true` shows gitignored files. Keep it off by default.
            ignored = false,
            exclude = {
              "**/node_modules/**",
              "**/.next/**",
              "**/.git/**",
              "**/dist/**",
              "**/build/**",
            },
          },
          grep = {
            hidden = true,
            ignored = false,
            exclude = {
              "**/node_modules/**",
              "**/.next/**",
              "**/.git/**",
              "**/dist/**",
              "**/build/**",
            },
          },
          explorer = {
            hidden = true,
            ignored = false,
            exclude = {
              "**/node_modules/**",
              "**/.next/**",
              "**/.git/**",
              "**/dist/**",
              "**/build/**",
            },
          },
          smart = {
            hidden = true,
            ignored = false,
            exclude = {
              "**/node_modules/**",
              "**/.next/**",
              "**/.git/**",
              "**/dist/**",
              "**/build/**",
            },
          },
        },
      },
      -- Use default snacks dashboard (LazyVim default)
      dashboard = { enabled = true },
    },
  },
}
