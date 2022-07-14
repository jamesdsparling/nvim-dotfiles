require("bufferline").setup {
  options = {
    -- separator_style = "padded_slant",
    show_close_icon = false,
    show_buffer_close_icons = false,
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    diagnostics = "nvim_lsp"
  },
}
