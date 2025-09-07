-- Mason setup
require("mason").setup()

-- Mason-LSPConfig setup
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "clangd", "pyright" }, -- add more if you need
  automatic_installation = true,
}

-- Import lspconfig
local lspconfig = require("lspconfig")

-- Lua (Neovim config dev)
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = { checkThirdParty = false },
    },
  },
}

-- C/C++
lspconfig.clangd.setup {}

-- Python
lspconfig.pyright.setup {}
