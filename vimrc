" this formats JSON, usage  :FormatJSON
com! FormatJSON %!python -m json.tool

" might be removed by ale below
"autocmd BufWritePre * :%s/\s\+$//e " remove whitespaces on save
filetype plugin on " filetype detection for loading plugins
filetype on
syntax on " defaults syntax highlighting to be on

"yank across terminals
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

" REMAPPINGS
" fold with spacebar
set foldmethod=syntax " use syntax for folding
set foldlevelstart=100 " start unfolded
" use spacebar for folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
imap jj <Esc>

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

set backspace=indent,eol,start "more powerful backspacing
set hidden
set undofile " persistent undoing
set undodir=~/.vim/undodir " dir for saving previous states
set history=100 " larger history to remember previous commands/searches
set showmatch " show matching parens
set hlsearch " highlight search terms
set smartcase " ignore case if lower, otherwise respect
set laststatus=2 " always display status line
set statusline+=%F " show file path
set statusline+=%1*%=%5l%* "current line
set statusline+=%2*/%L%* "total lines
set autoindent
set expandtab " use spaces
set tabstop=4

" JSDoc plugin
" interactive prompt
let g:jsdoc_allow_input_prompt = 1
" main description
let g:jsdoc_input_description = 1
" enables es6 taggin
let g:jsdoc_enable_es6 = 1

" syntastic syntax checking
"let g:syntastic_javascript_checkers=['eslint']
" ignore homegrown directives and angularJS-specific tags
"let g:syntastic_html_tidy_ignore_errors=['proprietary attribute']
"let g:syntastic_error_symbol = "✗"
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0


" markdown server defaults
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

highlight SyntasticErrorSign guifg=NONE guibg=NONE
highlight SignColumn cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" end syntastic conf

" git diffing with fugitive and git-gutter
"set GitGutterLineHightlightsEnable

" set numbers, grey them out, but highlight/bold the current line
set number
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi CursorLineNR cterm=bold
set cursorline
hi LineNr ctermfg=DarkGrey
" end numbers

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint']
\}

" https://github.com/w0rp/ale/blob/master/doc/ale-go.txt
let g:ale_linters = {
\ 'javascript': ['eslint']
\}

let g:ale_fix_on_save = 1 " fix files when you save

call plug#begin()
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
"" markdown server: npm -g install instant-markdown-d
"" https://github.com/suan/vim-instant-markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
call plug#end()
" the following line must be called after plug#end() because, for whatever
" stupid reason, plug#end() sets filetype indentation. See #379 of
" junegunn/vim-plug
filetype indent off 

" pathogen for managing plugins
execute pathogen#infect()
