local opts = {
  indicator_icon = "▎",
  show_close_icon = false,

  offsets = {
    {
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      separator = true -- use a "true" to enable the default, or set your own character
    }
  }
}

require("bufferline").setup({
  options = opts
})
