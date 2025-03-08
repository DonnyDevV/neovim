return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    lualine.setup({
      options = {
        icons_enabled = false,
        theme = 'auto', -- Dies verwendet das Standard-Farbschema von Neovim
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
      },
      sections = {
        lualine_a = {{'mode', fmt = function(str) return str:sub(1,1) end}},
        lualine_b = {{'branch', fmt = function(str) return str:sub(1,10) end}, 'diff', 'diagnostics'},
        lualine_c = {{'filename', path = 1}},
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    })
  end,
}
