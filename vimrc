" this formats JSON, usage  :FormatJSON
com! FormatJSON %!python -m json.tool

" filetype detection for loading plugins
filetype plugin on

filetype on

" defaults syntax highlighting to be on
syntax on

colorscheme purple_blue
" other color scheme choices: 
  " inkpot - more subdued
  " tolerable - for bright days in the hammock, grrrl

" get that background transparent
hi Normal guibg=NONE ctermbg=NONE
