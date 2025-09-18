-- ~/.config/nvim/lua/core/colors.lua
-- (add near your colors setup file)

vim.opt.termguicolors = true

local ok, rose_pine = pcall(require, "rose-pine")
if not ok then return end

rose_pine.setup({
  variant = "main",
  dark_variant = "main",
  disable_background = false,
  disable_float_background = false,
  disable_italics = false,

  highlight_groups = {
    -- Tree-sitter captures
    ["@keyword"]            = { fg = "#FFFFFF",  italic = true }, -- local, if, end
    ["@keyword.function"]   = { fg = "iris",  italic = true },
    ["@conditional"]        = { fg = "iris",  italic = true },
    ["@repeat"]             = { fg = "iris",  italic = true },

    ["@function"]           = { fg = "pine",  bold = true },
    ["@function.builtin"]   = { fg = "pine",  bold = true },

    ["@variable"]           = { fg = "foam" },
    ["@variable.builtin"]   = { fg = "foam" },

    -- (optional) keep classic groups for non-TS files
    Keyword  = { fg = "iris",  italic = true },
    Function = { fg = "pine",  bold = true },
    Variable = { fg = "foam"  },
    Comment  = { italic = true },
  },
})

-- Make sure Rose Pine loads first
vim.cmd("colorscheme rose-pine")

-- Re-apply after any plugin recolors
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- break the link & force Lua keywords color
    vim.api.nvim_set_hl(0, "@keyword.lua",      { fg = "#C4A7E7", italic = true })
    vim.api.nvim_set_hl(0, "@conditional.lua",  { fg = "#C4A7E7", italic = true })
    vim.api.nvim_set_hl(0, "@repeat.lua",       { fg = "#C4A7E7", italic = true })

    -- also color the classic target group just in case
    vim.api.nvim_set_hl(0, "Statement",         { fg = "#C4A7E7", italic = true })
  end,
})
