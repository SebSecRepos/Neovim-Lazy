-- Mapeo para mover la línea actual hacia arriba con Alt + Flecha arriba
vim.api.nvim_set_keymap("n", "<A-Up>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Mapeo para mover la línea actual hacia abajo con Alt + Flecha abajo
vim.api.nvim_set_keymap("n", "<A-Down>", ":m .+1<CR>==", { noremap = true, silent = true })

-- Mapeo para mover la selección hacia arriba con Alt + Flecha arriba (modo visual)
vim.api.nvim_set_keymap("v", "<A-Up>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Mapeo para mover la selección hacia abajo con Alt + Flecha abajo (modo visual)
vim.api.nvim_set_keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

local function toggle_list()
  if vim.opt.list:get() then
    vim.cmd("setlocal nolist")
    vim.cmd("IBLDisable")
    vim.b.miniindentscope_disable = true
  else
    vim.cmd("setlocal list")
    vim.cmd("IBLEnable")
    vim.b.miniindentscope_disable = false
  end
end

vim.keymap.set("n", "<leader>uL", toggle_list, { desc = "Toggle listchars" })
