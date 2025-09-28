vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate", -- updates registry
    }

    -- Mason bridge for nvim-lspconfig
    use {
        "williamboman/mason-lspconfig.nvim",
        requires = { "neovim/nvim-lspconfig" },
    }

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { "nvim-lua/plenary.nvim" }
    }

    use {
        "goolord/alpha-nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local alpha = require("alpha")
            local theme = require("alpha.themes.startify") -- or .dashboard
            alpha.setup(theme.config)
        end,
    }

    -- Or with configuration
    use({
      'projekt0n/github-nvim-theme',
      config = function()
        require('github-theme').setup({
          -- ...
        })

        vim.cmd('colorscheme github_dark_tritanopia')
      end
    })

--[[
    use {
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            require("rose-pine").setup({
                variant = "main",
                dark_variant = "main",
                highlight_groups = {
                    ["@keyword.lua"]     = { fg = "iris", italic = true },
                    ["@conditional.lua"] = { fg = "iris", italic = true },
                    ["@repeat.lua"]      = { fg = "iris", italic = true },
                },
            })
            vim.cmd("colorscheme rose-pine")
        end,
    }
--]]

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

end)
