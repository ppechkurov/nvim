local colorscheme = "zephyrium"

--vim.g.tokyonight_style = "night"
--vim.g.gruvbox_material_background = "medium"
--vim.g.gruvbox_material_better_performance = 1
--vim.g.gruvbox_material_enable_bold = 1
--vim.g.gruvbox_material_show_eob = 0

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("Colorscheme " .. colorscheme .. " not found!")
  return
end

