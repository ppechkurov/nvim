require('staline').setup {
  defaults = {
    expand_null_ls    = false, -- This expands out all the null-ls sources to be shown on the statusline
    null_ls_symbol    = "", -- A symbol to indicate that a source is coming from null-ls
    left_separator    = "",
    right_separator   = "",
    cool_symbol       = " ", -- Change this to override default OS icon.
    full_path         = false,
    mod_symbol        = "  ",
    lsp_client_symbol = " ",
    line_column       = "[%l/%L]:%c 並%p%% ", -- `:h stl` to see all flags.

    bg               = "#303030", -- Default background is transparent.
    inactive_color   = "#303030",
    inactive_bgcolor = "none",
    true_colors      = false, -- true lsp colors.
    font_active      = "none", -- "bold", "italic", "bold,italic", etc
    branch_symbol    = " ",
  },
  mode_icons = {
    n = " ",
    i = " ",
    c = " ",
    v = " ", -- etc..
  },
  sections = {
    left  = { '- ', '-mode', 'left_sep_double', ' ', 'branch' },
    mid   = { 'file_name' },
    right = { 'cool_symbol', 'lsp_name', 'right_sep_double', '-line_column' },
  },
  special_table = {
    NvimTree = { 'NvimTree', ' ' },
    packer = { 'Packer', ' ' }, -- etc
  },
  lsp_symbols = {
    Error = " ",
    Info = " ",
    Warn = " ",
    Hint = "",
  },
}
vim.opt.laststatus=3
