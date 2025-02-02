-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.keymaps")
require("config.blankline")
require("config.autocmds")
require'lspconfig'.clangd.setup{}
vim.opt.expandtab = true -- Usa espacios en lugar de tabuladores
vim.opt.shiftwidth = 4 -- Número de espacios por indentación
vim.opt.tabstop = 4 -- Ancho de tabulador
vim.opt.softtabstop = 4 -- Para que el tab se comporte igual que los espacios
vim.opt.list = false
