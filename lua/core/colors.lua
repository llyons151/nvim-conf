-- ~/.config/nvim/lua/core/colors.lua
local status, github_theme = pcall(require, "github-theme")
if not status then
  return
end

github_theme.setup({
  options = {
    transparent = true,
    terminal_colors = true,
    dim_inactive = false,
    hide_end_of_buffer = true,
    styles = {
      comments  = "italic",
      keywords  = "italic",
      functions = "bold",
      variables = "NONE",
    },
  },
})

-- Pick your variant
vim.cmd("colorscheme github_dark_default")
