local set = vim.opt

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

-- restore the session for the current directory
vim.api.nvim_set_keymap('n', '<leader>qs', [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.api.nvim_set_keymap('n', '<leader>ql', [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap('n', '<leader>qd', [[<cmd>lua require("persistence").stop()<cr>]], {})
