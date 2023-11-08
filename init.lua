require "plugins"
require "keybindings"

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
