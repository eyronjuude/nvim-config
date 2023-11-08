vim.call('plug#begin', '~/.config/nvim/plugged')

local Plug = vim.fn['plug#']
Plug('https://github.com/tpope/vim-surround') -- Surrounding ysw
Plug('https://github.com/preservim/nerdtree') -- NerdTree
Plug('https://github.com/tpope/vim-commentary') -- For Commenting gcc & gc
Plug('https://github.com/vim-airline/vim-airline') -- Status bar
Plug('https://github.com/vim-airline/vim-airline-themes') -- Themes
Plug('https://github.com/lifepillar/pgsql.vim') -- PSQL Pluging needs :SQLSetType pgsql.vim
Plug('https://github.com/ap/vim-css-color') -- CSS Color Preview
Plug('https://github.com/rafi/awesome-vim-colorschemes') -- Retro Scheme
Plug('https://github.com/neoclide/coc.nvim', { ['branch'] = 'release' })  -- Auto Completion
Plug('https://github.com/ryanoasis/vim-devicons') -- Developer Icons
Plug('https://github.com/tc50cal/vim-terminal') -- Vim Terminal
Plug('https://github.com/preservim/tagbar') -- Tagbar for code navigation
Plug('https://github.com/terryma/vim-multiple-cursors') -- CTRL + N for multiple cursors
Plug('https://github.com/williamboman/mason.nvim') -- Portable Package Manager for LSPs
Plug('https://github.com/williamboman/mason-lspconfig.nvim') -- Mason LSP Configuration
Plug('https://github.com/neovim/nvim-lspconfig') -- Neovim LSP Configuration
Plug('https://github.com/nvim-tree/nvim-web-devicons') -- Recommended (for coloured icons)
Plug('https://github.com/akinsho/bufferline.nvim', { ['tag'] = '*' })

vim.call('plug#end')
