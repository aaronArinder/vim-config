" TODO: deep dive into https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim

" AUTO COMMANDS
" Removes whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" yml indentation
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType tf setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
" Spellchecking in markdown files
autocmd FileType markdown setlocal spell
" Run prettier for typescript files on:w
"autocmd BufWritePre *.\(ts\|yml\|yaml\) :silent %!prettier --stdin-filepath %
" Golang add missing imports
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

filetype plugin on " filetype detection for loading plugins
filetype on
syntax on " defaults syntax highlighting to be on

"yank across terminals
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

" MANUAL COMMANDS
" this formats JSON, usage  :FormatJSON
com! FormatJSON %!python -m json.tool

" REMAPPINGS
imap jj <Esc>

" COLOR SCHEMES
" vivify is an amazing resource for creating color schemes
colorscheme desertedocean
" purple_blue
" summerfruit256
" desertedocean
" other color scheme choices:

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
set statusline+=:%c
set statusline+=%2*/%L%* "total lines
set autoindent
set smartindent
set expandtab " use spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set ignorecase

" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" indentation guide
"let g:indentLine_char = '⦙'

" Using CocList
" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" type handling bindings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" go back to most recent file
nmap <silent> gb :b# <Return>

" better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" JSDoc plugin
" interactive prompt
"let g:jsdoc_allow_input_prompt = 1
" main description
"let g:jsdoc_input_description = 1
" enables es6 taggin
"let g:jsdoc_enable_es6 = 1

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
"

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

"coc popup menu
hi Pmenu ctermbg=DarkGrey ctermfg=LightGrey

" https://github.com/w0rp/ale/blob/master/doc/ale-go.txt
"let g:ale_linters = {
"\ 'javascript': ['eslint']
"\}

"let g:ale_fix_on_save = 1 " fix files when you save

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

" sort is affecting only: directories on the top, files below
"let g:netrw_sort_sequence = '[\/]$,*'

" Toggle Vexplore with Ctrl-O
function! ToggleVExplorer()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        let cur_win_num = winnr()

        if expl_win_num != -1
            while expl_win_num != cur_win_num
                exec "wincmd w"
                let cur_win_num = winnr()
            endwhile

            close
        endif

        unlet t:expl_buf_num
    else
         Vexplore
         let t:expl_buf_num = bufnr("%")
    endif
endfunction

map <silent> <C-O> :call ToggleVExplorer()<CR>
map <silent> <C-F> :FZF<CR>

" Scroll floating window
nnoremap <silent><expr><DOWN> coc#util#has_float() ? coc#util#float_scroll(1) : "\<down>"
nnoremap <silent><expr><UP>  coc#util#has_float() ? coc#util#float_scroll(0) :  "\<up>"


call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug '/usr/local/opt/fzf'
Plug 'tpope/vim-fugitive'
Plug 'cespare/vim-toml'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
call plug#end()
" the following line must be called after plug#end() because, for whatever
" stupid reason, plug#end() sets filetype indentation. See #379 of junegunn/vim-plug
filetype indent off

