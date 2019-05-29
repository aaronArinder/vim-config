" this formats JSON, usage  :FormatJSON
com! FormatJSON %!python -m json.tool
autocmd BufWritePre * :%s/\s\+$//e " remove whitespaces on save
filetype plugin on " filetype detection for loading plugins
filetype on
syntax on " defaults syntax highlighting to be on
set clipboard=unnamedplus "yank across terminals

" REMAPPINGS
" fold with spacebar
set foldmethod=syntax " use syntax for folding
set foldlevelstart=100 " start unfolded
" suse spacebar for folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf


" COLOR SCHEMES
colorscheme purple_blue
" vivify is an amazing resource for creating color schemes
" other color scheme choices:
  " inkpot - more subdued
  " colorzone: current replacement for outside
  " purple_blue: nice torq, good purps :: DEFAULT
" get that background transparent

" hide, don't close, buffers
" hi Normal guibg=NONE ctermbg=NONE

set hidden
set undofile " persistent undoing
set undodir=~/.vim/undodir " dir for saving previous states
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
set tabstop=2

" syntastic syntax checking
let g:syntastic_javascript_checkers=['eslint']
" ignore homegrown directives and angularJS-specific tags
let g:syntastic_html_tidy_ignore_errors=['proprietary attribute']
let g:syntastic_error_symbol = "✗"
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
highlight SyntasticErrorSign guifg=NONE guibg=NONE
highlight SignColumn cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" end syntastic conf

" set numbers, grey them out, but highlight/bold the current line
set number
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi CursorLineNR cterm=bold
set cursorline
hi LineNr ctermfg=DarkGrey
" end numbers

" pathogen for managing plugins
execute pathogen#infect()
