return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      opts.servers.vtsls = vim.tbl_deep_extend("force", opts.servers.vtsls or {}, {
        cmd = {
          "node",
          vim.fn.expand("~/.local/share/nvim/mason/packages/vtsls/node_modules/@vtsls/language-server/bin/vtsls.js"),
          "--stdio",
        },
      })

      opts.servers.eslint = vim.tbl_deep_extend("force", opts.servers.eslint or {}, {
        cmd = {
          "node",
          vim.fn.expand(
            "~/.local/share/nvim/mason/packages/eslint-lsp/node_modules/vscode-langservers-extracted/bin/vscode-eslint-language-server"
          ),
          "--stdio",
        },
      })

      opts.servers.tailwindcss = vim.tbl_deep_extend("force", opts.servers.tailwindcss or {}, {
        cmd = {
          "node",
          vim.fn.expand(
            "~/.local/share/nvim/mason/packages/tailwindcss-language-server/node_modules/@tailwindcss/language-server/bin/tailwindcss-language-server"
          ),
          "--stdio",
        },
      })
    end,
  },
}
