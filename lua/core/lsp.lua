require("mason").setup()

require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "clangd", "pyright", "ts_ls", "stylua" }, -- use ts_ls now
  automatic_installation = true,
}

local lspconfig = require("lspconfig")

-- Lua
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

-- JavaScript / TypeScript
lspconfig.ts_ls.setup {}
