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
  "   - currently shit
  " colorzone: current replacement for outside
  " purple_blue: nice torq, good purps
" get that background transparent

" hide, don't close, buffers
" hi Normal guibg=NONE ctermbg=NONE
set hidden
set history=100 " larger history to remember previous commands/searches
set showmatch " show matching parens
set hlsearch " highlight search terms
set smartcase " ignore case if lower, otherwise respecte
set laststatus=2 " always display status line
set statusline+=%F " show file path
set statusline+=%1*%=%5l%* "current line
set statusline+=%2*/%L%* "total lines
set autoindent
set expandtab " use spaces

" set numbers, grey them out, but highlight/bold the current line
set number
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi CursorLineNR cterm=bold
set cursorline
hi LineNr ctermfg=DarkGrey

" pathogen for managing plugins
execute pathogen#infect()
