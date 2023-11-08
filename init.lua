require "plugins"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.encoding = 'utf-8'

vim.o.guifont = 'JetBrains Mono:h11'

vim.cmd[[colorscheme onedark]]

vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>e', ':NERDTreeToggle<CR>', {silent = true})
vim.keymap.set('n', '<Leader>m', ':Mason<CR>', {silent = true})
vim.keymap.set('n', '<Leader>c', ':bd!<CR>', {silent = true})
vim.keymap.set('n', '<Leader>t', '<C-w>s<C-w>j:term<CR>10<C-w>-<S-a>', {silent = true})
vim.keymap.set('n', '[b', ':bp<CR>', {silent = true})
vim.keymap.set('n', ']b', ':bn<CR>', {silent = true})
vim.keymap.set('n', '<C-h>', '<C-w>h', {silent = true})
vim.keymap.set('n', '<C-l>', '<C-w>l', {silent = true})
vim.keymap.set('n', '<C-j>', '<C-w>j', {silent = true})
vim.keymap.set('n', '<C-k>', '<C-w>k', {silent = true})
vim.keymap.set('n', 'j', 'gj', {silent = true})
vim.keymap.set('n', 'k', 'gk', {silent = true})
vim.keymap.set('n', '<C-a>', 'mpgg<S-V>G<Esc>`pzz', {silent = true})
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {silent = true})
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j', {silent = true})
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k', {silent = true})
vim.keymap.set('n', '<F1>', ':edit $MYVIMRC<CR>', {silent = true})

vim.g.NERDTreeDirArrowExpandable = '+'
vim.g.NERDTreeDirArrowCollapsible = '~'

-- air-line

vim.g.airline_powerline_fonts = 1

vim.cmd[[

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' LN '

]]

-- inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : '<Tab>'

require('bufferline').setup()
require('mason').setup()
require('mason-lspconfig').setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
require('lspconfig').typst_lsp.setup{
	settings = {
		exportPdf = 'onType' -- Choose onType, onSave or never.
		-- serverPath = '' -- Normally, there is no need to uncomment it.
	}
}
require('lspconfig').pylsp.setup{
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = {'W391'},
					maxLineLength = 100
				}
			}
		}
	}
}
require('lspconfig').ltex.setup{
	settings = {
		ltex = {
			language = 'en-GB',
		},
	},
}
