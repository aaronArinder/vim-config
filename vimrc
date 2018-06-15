" this formats JSON, usage  :FormatJSON
com! FormatJSON %!python -m json.tool
autocmd BufWritePre * :%s/\s\+$//e " remove whitespaces on save
filetype plugin on " filetype detection for loading plugins
filetype on
syntax on " defaults syntax highlighting to be on

colorscheme purple_blue
" vivify is an amazing resource for creating color schemes
" other color scheme choices:
  " inkpot - more subdued
  " tolerable - for bright days in the hammock, grrrl
  " purple_blue: nice torq, good purps
" get that background transparent

" hide, don't close, buffers
hi Normal guibg=NONE ctermbg=NONE
set hidden
set history=100 " larger history to remember previous commands/searches
set showmatch " show matching parens
set hlsearch " highlight search terms
set smartcase " ignore case if lower, otherwise respecte
set laststatus=2 " always display status line
hi statusline ctermfg=202
hi statusline ctermbg=NONE
set statusline+=%F " show file path
set statusline+=%1*%=%5l%* "current line
set statusline+=%2*/%L%* "total lines
set autoindent
set expandtab " use spaces

" pathogen for managing plugins
execute pathogen#infect()
