return {
  "akinsho/bufferline.nvim",
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- Removed this line
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
      show_buffer_icons = false,
      show_buffer_close_icons = false,
      show_close_icon = false,
      show_tab_indicators = true,
      enforce_regular_tabs = true,
      always_show_bufferline = true,
      indicator = {
        style = 'pipe',
      },
      modified_icon = '[+]',
      numbers = "ordinal",
    },
  },
}
