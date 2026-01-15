-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Git branches picker (overrides git browse)
vim.keymap.set("n", "<leader>gB", function()
  Snacks.picker.git_branches({ all = true })
end, { desc = "Git Branches (all)" })
