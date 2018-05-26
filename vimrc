" this formats JSON, usage  :FormatJSON
com! FormatJSON %!python -m json.tool

" remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" filetype detection for loading plugins
filetype plugin on

filetype on

" defaults syntax highlighting to be on
syntax on

colorscheme purple_blue
" vivify is an amazing resource for creating color schemes
" other color scheme choices:
  " inkpot - more subdued
  " tolerable - for bright days in the hammock, grrrl

" get that background transparent
hi Normal guibg=NONE ctermbg=NONE

" keep more info in memory
" hide, don't close, buffers
set hidden
" larger history to remember previous commands/searches
set history=100

" show matching parens
set showmatch

" highlight search terms
set hlsearch

" ignore case if lower, otherwise respect
set smartcase

" pathogen for managing plugins
execute pathogen#infect()
