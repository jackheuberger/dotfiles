local Plug = vim.fn["plug#"]

vim.call('plug#begin', '~/.config/nvim/plugged')
    --LSP
    Plug('williamboman/mason.nvim')
    Plug('williamboman/mason-lspconfig.nvim')
    Plug('neovim/nvim-lspconfig')
    Plug('ms-jpq/coq_nvim', { branch = 'coq' })
    Plug('ms-jpq/coq.artifacts', {branch= 'artifacts'})

    --visuals
    Plug('vim-airline/vim-airline')
    Plug('vim-airline/vim-airline-themes')
    Plug('ryanoasis/vim-devicons')
    Plug('bryanmylee/vim-colorscheme-icons')
    Plug('sonph/onehalf', { rtp= 'vim' })

    --functionality
    Plug('junegunn/goyo.vim')
    Plug('junegunn/limelight.vim')
    Plug('tpope/vim-fugitive')
    Plug('tpope/vim-sensible')
    Plug('tpope/vim-surround')
    Plug('preservim/nerdtree')

    Plug('alvan/vim-closetag')
    Plug('Yggdroot/indentLine')
    Plug('sheerun/vim-polyglot')
vim.call('plug#end')

vim.api.nvim_exec([[ autocmd! User GoyoEnter Limelight ]], false)
vim.api.nvim_exec([[ autocmd! User GoyoLeave Limelight! ]], false)

require("mason").setup()

local lsp = require "lspconfig"
local coq = require "coq"

lsp.hls.setup(coq.lsp_ensure_capabilities{})

lsp.tsserver.setup(coq.lsp_ensure_capabilities{})

vim.cmd('COQnow')

--let g:airline_theme = 'onehalfdark'
