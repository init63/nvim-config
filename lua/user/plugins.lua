local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
end

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- icons
    use "kyazdani42/nvim-web-devicons"

    -- colorscheme
    -- use "rebelot/kanagawa.nvim"
    use "ellisonleao/gruvbox.nvim"

    -- other plugins
    use "nvim-lua/plenary.nvim"
    use "numToStr/Comment.nvim"
    use "b0o/SchemaStore.nvim"
    use "mattn/emmet-vim"
    use "editorconfig/editorconfig-vim"
    use "nvim-lualine/lualine.nvim"
    use "windwp/nvim-autopairs"
    use "matze/vim-move"
    use { "mg979/vim-visual-multi", branch = "master" }
    use "JoosepAlviste/nvim-ts-context-commentstring"
    use "lukas-reineke/indent-blankline.nvim"
    use "lewis6991/gitsigns.nvim"

    -- cmp
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"

    -- lsp
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    use "jose-elias-alvarez/null-ls.nvim"

    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine

    -- treesitter
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use "windwp/nvim-ts-autotag"

    -- nvim-tree
    use "kyazdani42/nvim-tree.lua"
    use { "akinsho/bufferline.nvim", tag = "*" }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require("packer").sync()
    end
end)
