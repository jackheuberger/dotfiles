local Utils = require('utils')

local nnoremap = Utils.nnoremap

nnoremap("<F1>", ":set rnu! rnu?<CR>")

nnoremap("<leader>g", ":Goyo<CR>")

nnoremap("<C-t>", ":NERDTreeToggle<CR>")
