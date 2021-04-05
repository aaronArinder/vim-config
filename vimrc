" AUTO COMMANDS
" Removes whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" yml indentation
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
" Spellchecking in markdown files
autocmd FileType markdown setlocal spell
" Run prettier for typescript files on:w
"autocmd BufWritePre *.\(ts\|yml\|yaml\) :silent %!prettier --stdin-filepath %
" Golang add missing imports
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

filetype plugin on " filetype detection for loading plugins
filetype on
syntax on " defaults syntax highlighting to be on

if has("autocmd")   " check that we've autocmd
  augroup templates " create group called templates
    " runs every time we start to edit a non-existent file,
    " inserting the contents of skelethon.sh at line 0
    autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
  augroup END
endif

map <silent> <C-T> :Terminalinsideyoureditorinsideyourterminal <CR>
command Terminalinsideyoureditorinsideyourterminal :belowright split|terminal

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


set backspace=indent,eol,start "more powerful backspacing
set hidden
set undofile " persistent undoing
set undodir=~/.vim/undodir " dir for saving previous states
set history=100 " larger history to remember previous commands/searches
set showmatch " show matching parens
set hlsearch " highlight search terms
set smartcase " ignore case if lower, otherwise respect
set autoindent
set smartindent
set expandtab " use spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set ignorecase

" Better display for messages
"set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

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

highlight SyntasticErrorSign guifg=NONE guibg=NONE
highlight SignColumn cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" set numbers, grey them out, but highlight/bold the current line
set number
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi CursorLineNR cterm=bold
set cursorline
hi LineNr ctermfg=DarkGrey

"coc popup menu
hi Pmenu ctermbg=DarkGrey ctermfg=LightGrey

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

" vim-terraform config: https://github.com/hashivim/vim-terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1

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

function! ToggleNotes()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        let cur_win_num = winnr()

        if expl_win_num != -1
            while expl_win_num != cur_win_num
                exec "wincmd j"
                let cur_win_num = winnr()
            endwhile
            close
        endif

        unlet t:expl_buf_num
    else
        :belowright split notes.txt
        let t:expl_buf_num = bufnr("%")
    endif
endfunction

function! ToggleJournal()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        let cur_win_num = winnr()

        if expl_win_num != -1
            while expl_win_num != cur_win_num
                exec "wincmd j"
                let cur_win_num = winnr()
            endwhile
            close
        endif

        unlet t:expl_buf_num
    else
        :belowright split ~/notes/daily
        let t:expl_buf_num = bufnr("%")
    endif
endfunction

map <silent> <C-O> :call ToggleVExplorer()<CR>
map <silent> <C-N> :call ToggleNotes()<CR>
map <silent> <C-J> :call ToggleJournal()<CR>
map <silent> <C-F> :FZF<CR>

" Scroll floating window
nnoremap <silent><expr><DOWN> coc#float#has_scroll() ? coc#float#scroll(1) : "\<down>"
nnoremap <silent><expr><UP>  coc#float#has_scroll() ? coc#float#scroll(0) :  "\<up>"


call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'cespare/vim-toml'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'hashivim/vim-terraform'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'artanikin/vim-synthwave84', { 'as': 'synthwave' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
" the following line must be called after plug#end() because, for whatever
" stupid reason, plug#end() sets filetype indentation. See #379 of junegunn/vim-plug
filetype indent off

" COLOR SCHEMES
" vivify is an amazing resource for creating color schemes
colorscheme dracula
" dracula
" synthwave
" purple_blue
" summerfruit256
" desertedocean

