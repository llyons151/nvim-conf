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

    use({
        "projekt0n/github-nvim-theme",
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

end)
