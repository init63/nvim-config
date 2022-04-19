local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- icons
    use 'kyazdani42/nvim-web-devicons'

    -- colorscheme
    use 'rebelot/kanagawa.nvim'

    use { 'neoclide/coc.nvim', branch = 'release' }
    use 'numToStr/Comment.nvim'
    use 'mattn/emmet-vim'
    use 'editorconfig/editorconfig-vim'
    use 'nvim-lualine/lualine.nvim'
    use 'windwp/nvim-autopairs'
    use 'matze/vim-move'
    use { 'mg979/vim-visual-multi', branch = 'master' }
    use 'seblj/nvim-tabline'
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',}

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
