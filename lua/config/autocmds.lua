-- Autoformat setting
local set_autoformat = function(pattern, bool_val)
  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = pattern,
    callback = function()
      vim.b.autoformat = bool_val
    end,
  })
end

set_autoformat({ "cpp" }, true)
set_autoformat({ "fish" }, false)
set_autoformat({ "lua" }, false)
set_autoformat({ "perl" }, false)
set_autoformat({ "yaml" }, false)
set_autoformat({ "bash" }, false)
set_autoformat({ "sh" }, false)
