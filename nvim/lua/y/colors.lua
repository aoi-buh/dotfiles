
local color1 = 'kanagawa'
local color2 = 'sierra'
local color3 = 'rose-pine'
local color4 = 'gotham256'

-- local default = color1
local default = color3

local Colors = vim.api.nvim_create_augroup('Colors', { clear = true })
vim.api.nvim_create_autocmd('ColorScheme', {
  callback = function()
    -- vim.api.nvim_set_hl(0, "Normal", { blend = 30 })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { blend = 30 })
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
  group = Colors,
  pattern = '*',
})

vim.cmd.colorscheme(default)

vim.keymap.set('n', '<C-n>', '<cmd>colorscheme ' .. color1 .. '<cr>' )
vim.keymap.set('n', '<C-e>', '<cmd>colorscheme ' .. color2 .. '<cr>' )
vim.keymap.set('n', '<C-i>', '<cmd>colorscheme ' .. color3 .. '<cr>' )
-- vim.keymap.set('n', '<C-o>', '<cmd>colorscheme ' .. color4 .. '<cr>' )
