-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Use Unix line endings (LF) for cross-platform consistency
vim.opt.fileformat = "unix"
vim.opt.fileformats = "unix,dos"

-- Fix prettier path with spaces for OneDrive
local format_prettier = function()
  local cmd = "prettier"
  local args = {"--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0))}
  return {
    exe = cmd,
    args = args,
    stdin = true,
  }
end

vim.g.formatter = {
  filetype = {
    javascript = { format_prettier },
    typescript = { format_prettier },
    javascriptreact = { format_prettier },
    typescriptreact = { format_prettier },
    json = { format_prettier },
    css = { format_prettier },
    scss = { format_prettier },
    html = { format_prettier },
  },
}
