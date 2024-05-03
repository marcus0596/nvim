require('swenv').setup({
    post_set_venv = function ()
        vim.cmd('LspResetart')
end})
vim.keymap.set('n', '<leader>c', '<cmd>lua require("swenv.api").pick_venv()<cr>')
