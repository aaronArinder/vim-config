" Vim color file - autumn
" Generated by http://bytefluent.com/vivify 2018-06-15
set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "autumn"

"hi SignColumn -- no settings --
"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi Normal guifg=#000000 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=NONE ctermbg=194 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi CursorColumn -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi Error -- no settings --
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#ffff00 guibg=#449944 guisp=#449944 gui=NONE ctermfg=11 ctermbg=71 cterm=NONE
hi WildMenu guifg=#000000 guibg=#ffffe0 guisp=#ffffe0 gui=NONE ctermfg=NONE ctermbg=230 cterm=NONE
hi SpecialComment guifg=#008b8b guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=30 ctermbg=194 cterm=NONE
hi Typedef guifg=#bb9900 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=136 ctermbg=194 cterm=NONE
hi Title guifg=#8b008b guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=90 ctermbg=194 cterm=NONE
hi Folded guifg=#00008b guibg=#d3d3d3 guisp=#d3d3d3 gui=NONE ctermfg=18 ctermbg=252 cterm=NONE
hi PreCondit guifg=#a9a9a9 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=248 ctermbg=194 cterm=NONE
hi Include guifg=#a9a9a9 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=248 ctermbg=194 cterm=NONE
hi StatusLineNC guifg=#a9a9a9 guibg=#d7d7d2 guisp=#d7d7d2 gui=NONE ctermfg=248 ctermbg=187 cterm=NONE
hi NonText guifg=#c6c6c6 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=251 ctermbg=194 cterm=NONE
hi DiffText guifg=#ffffe0 guibg=#cc7733 guisp=#cc7733 gui=bold ctermfg=230 ctermbg=173 cterm=bold
hi ErrorMsg guifg=#ffffff guibg=#8b0000 guisp=#8b0000 gui=NONE ctermfg=15 ctermbg=88 cterm=NONE
hi Ignore guifg=#bebebe guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=7 ctermbg=194 cterm=NONE
hi Debug guifg=#008b8b guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=30 ctermbg=194 cterm=NONE
hi PMenuSbar guifg=NONE guibg=#d3d3d3 guisp=#d3d3d3 gui=NONE ctermfg=NONE ctermbg=252 cterm=NONE
hi Identifier guifg=#008b8b guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=30 ctermbg=194 cterm=NONE
hi SpecialChar guifg=#008b8b guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=30 ctermbg=194 cterm=NONE
hi Conditional guifg=#44aa44 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=71 ctermbg=194 cterm=NONE
hi StorageClass guifg=#bb9900 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=136 ctermbg=194 cterm=NONE
hi Todo guifg=#229900 guibg=#ddd9b8 guisp=#ddd9b8 gui=bold ctermfg=28 ctermbg=187 cterm=bold
hi Special guifg=#008b8b guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=30 ctermbg=194 cterm=NONE
hi LineNr guifg=#a52a2a guibg=#d3d3d3 guisp=#d3d3d3 gui=NONE ctermfg=124 ctermbg=252 cterm=NONE
hi StatusLine guifg=#80624d guibg=#ddd9b8 guisp=#ddd9b8 gui=NONE ctermfg=95 ctermbg=187 cterm=NONE
hi Label guifg=#44aa44 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=71 ctermbg=194 cterm=NONE
hi PMenuSel guifg=#80624d guibg=#ddd9b8 guisp=#ddd9b8 gui=NONE ctermfg=95 ctermbg=187 cterm=NONE
hi Search guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi Delimiter guifg=#008b8b guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=30 ctermbg=194 cterm=NONE
hi Statement guifg=#44aa44 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=71 ctermbg=194 cterm=NONE
hi Comment guifg=#ccaaaa guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=181 ctermbg=194 cterm=NONE
hi Character guifg=#bb6666 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=131 ctermbg=194 cterm=NONE
hi Float guifg=#bb6666 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=131 ctermbg=194 cterm=NONE
hi Number guifg=#bb6666 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=131 ctermbg=194 cterm=NONE
hi Boolean guifg=#bb6666 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=131 ctermbg=194 cterm=NONE
hi Operator guifg=#44aa44 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=71 ctermbg=194 cterm=NONE
hi Question guifg=#006400 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=22 ctermbg=194 cterm=NONE
hi WarningMsg guifg=#ff0000 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=196 ctermbg=194 cterm=NONE
hi VisualNOS guifg=#bebebe guibg=#000000 guisp=#000000 gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#336633 guibg=#aaccaa guisp=#aaccaa gui=NONE ctermfg=65 ctermbg=151 cterm=NONE
hi ModeMsg guifg=#007700 guibg=#aaccaa guisp=#aaccaa gui=NONE ctermfg=2 ctermbg=151 cterm=NONE
hi Define guifg=#a9a9a9 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=248 ctermbg=194 cterm=NONE
hi Function guifg=#0055cc guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=26 ctermbg=194 cterm=NONE
hi FoldColumn guifg=#00008b guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=18 ctermbg=7 cterm=NONE
hi PreProc guifg=#a9a9a9 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=248 ctermbg=194 cterm=NONE
hi Visual guifg=#000000 guibg=#90ee90 guisp=#90ee90 gui=NONE ctermfg=NONE ctermbg=120 cterm=NONE
hi MoreMsg guifg=#006400 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=22 ctermbg=194 cterm=NONE
hi VertSplit guifg=#c7c7c2 guibg=#d7d7d2 guisp=#d7d7d2 gui=NONE ctermfg=251 ctermbg=187 cterm=NONE
hi Exception guifg=#44aa44 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=71 ctermbg=194 cterm=NONE
hi Keyword guifg=#44aa44 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=71 ctermbg=194 cterm=NONE
hi Type guifg=#bb9900 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=136 ctermbg=194 cterm=NONE
hi DiffChange guifg=#ffffe0 guibg=#ddbb55 guisp=#ddbb55 gui=NONE ctermfg=230 ctermbg=179 cterm=NONE
hi Cursor guifg=#000000 guibg=#ff0000 guisp=#ff0000 gui=NONE ctermfg=NONE ctermbg=196 cterm=NONE
hi PMenu guifg=#ffffff guibg=#a9a9a9 guisp=#a9a9a9 gui=NONE ctermfg=15 ctermbg=248 cterm=NONE
hi SpecialKey guifg=#add8e6 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=152 ctermbg=194 cterm=NONE
hi Constant guifg=#bb6666 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=131 ctermbg=194 cterm=NONE
hi Tag guifg=#008b8b guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=30 ctermbg=194 cterm=NONE
hi String guifg=#bb6666 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=131 ctermbg=194 cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a52a2a guisp=#a52a2a gui=NONE ctermfg=NONE ctermbg=124 cterm=NONE
hi Repeat guifg=#44aa44 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=71 ctermbg=194 cterm=NONE
hi Directory guifg=#ff0000 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=196 ctermbg=194 cterm=NONE
hi Structure guifg=#bb9900 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=136 ctermbg=194 cterm=NONE
hi Macro guifg=#a9a9a9 guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=248 ctermbg=194 cterm=NONE
hi Underlined guifg=#8b008b guibg=#f0f2f0 guisp=#f0f2f0 gui=underline ctermfg=90 ctermbg=194 cterm=underline
hi DiffAdd guifg=#aaeeaa guibg=#447744 guisp=#447744 gui=NONE ctermfg=157 ctermbg=65 cterm=NONE
hi cursorim guifg=#3d5458 guibg=#536991 guisp=#536991 gui=NONE ctermfg=66 ctermbg=60 cterm=NONE
hi lcursor guifg=#000000 guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=NONE ctermbg=14 cterm=NONE
hi function guifg=#0055cc guibg=#f0f2f0 guisp=#f0f2f0 gui=NONE ctermfg=26 ctermbg=194 cterm=NONE
