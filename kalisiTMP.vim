
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Name:           kalisi
" Author:         Arthur Jaron
" EMail:          hifreeo@gmail.com
" Version:        0.8.0
" Last Change:    2015.09.27

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Light
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  hi clear
  let g:colors_name = "kalisi"

  hi Normal           guifg=#000000 guibg=#f5f7f5 gui=NONE

  " Syntax ####################################################################

  hi Comment          guifg=#70a0d0 guibg=NONE    gui=NONE
  hi CommentURL       guifg=#70a0ff guibg=NONE    gui=underline
  hi CommentEmail     guifg=#70a0ff guibg=NONE    gui=underline
  hi SpecialComment   guifg=#6090c0               gui=bold

  hi Constant         guifg=#0000af guibg=NONE    gui=bold
  hi String           guifg=#0060a0 guibg=NONE
  hi Character        guifg=#9054c7 guibg=NONE    gui=bold
  hi Number           guifg=#0070c0 guibg=NONE
  hi Boolean          guifg=#66b600 guibg=NONE    gui=none
  hi Float            guifg=#00a0a0 guibg=NONE

  hi Identifier       guifg=#202090 guibg=NONE    gui=none
  hi Function         guifg=#1177dd               gui=none

  hi Statement        guifg=#66b600 guibg=NONE    gui=bold
  hi Conditional      guifg=#1177dd guibg=NONE    gui=bold
  hi Repeat           guifg=#1177dd guibg=NONE    gui=bold
  hi Label            guifg=#007700               gui=bold
  hi Operator         guifg=#274aac guibg=NONE    gui=none
  hi Exception        guifg=#005090 guibg=NONE    gui=bold

  hi PreProc          guifg=#d80050 guibg=NONE    gui=bold
  hi Include          guifg=#d80050 guibg=NONE    gui=bold
  hi Define           guifg=#d80050 guibg=NONE    gui=bold
  hi Macro            guifg=#d80000 guibg=NONE    gui=bold
  hi PreCondit        guifg=#1177dd               gui=none

  hi Type             guifg=#f47300 guibg=NONE    gui=none

  hi StorageClass     guifg=#0000d7               gui=italic
  hi Structure        guifg=#274aac guibg=NONE    gui=none
  hi Typedef          guifg=#274aac               gui=italic

  hi Special          guifg=#ffaf00 guibg=NONE    gui=bold
  hi SpecialChar      guifg=#F92672               gui=bold
  hi SpecialKey       guifg=#9e9e9e guibg=#e4e4e4 ctermfg=247 ctermbg=254
  hi Tag              guifg=#0010ff               gui=bold
  hi Delimiter        guifg=#d80050 guibg=NONE    gui=none
  hi Debug            guifg=#ddb800 guibg=NONE    gui=bold

  hi Underlined       guifg=#202020 guibg=NONE    gui=underline

  hi Error            guifg=#d80000 guibg=#d8d0d0 gui=bold,underline
  hi ErrorMsg         guifg=#d80000 guibg=#d8d0d0 gui=bold


  " Misc syntax ###############################################################
  "
  hi Todo             guifg=#000000 guibg=#ffff00 gui=bold
 
  hi Directory        guifg=#0060a0 guibg=NONE    gui=bold
  " html: special keywords in jscript: window log 
  hi Keyword          guifg=#66b600               gui=none
  hi Title            guifg=#1060a0 guibg=NONE    gui=bold
  hi NonText          guifg=#000000 guibg=#e6e6e6 gui=none
 
  hi Conceal          guifg=#303030 guibg=#e0e8e0

  hi DiffAdd                        guibg=#ddffdd 
  hi DiffChange                     guibg=#e8e8e8 
  hi DiffText         guifg=#000055 guibg=#ddddff
  hi DiffDelete       guifg=#eecccc guibg=#ffdddd

  hi SpellBad         guisp=#d80000 gui=undercurl
  hi SpellCap         guisp=#274aac gui=undercurl
  hi SpellLocal       guisp=#006600 gui=undercurl
  hi SpellRare        guisp=#555555 gui=undercurl

  " User interface ############################################################

  hi Visual                         guibg=#d0eeff gui=NONE
  hi VisualNOS                      guibg=#d8d8d8 gui=none

  hi Cursor           guifg=#ffffff guibg=#ff0000 gui=NONE
  hi CursorLineNr     guifg=#e0e0e0 guibg=#c9c4c4 gui=bold
  hi Cursorline                     guibg=#eaeaea
  hi CursorColumn                   guibg=#eaeaea
  hi MatchParen       guifg=#ffffff guibg=#ffd030 gui=none

  hi Search           guifg=#000000 guibg=#b8ea00 gui=bold
  hi IncSearch        guifg=#f8cf00 guibg=#000000

  hi LineNr           guifg=#707070 guibg=#e0e0e0 gui=NONE

  hi StatusLine       guifg=#e0e0e0 guibg=#707070 gui=NONE
  hi StatusLineNC     guifg=#e0e0e0 guibg=#a0a0a0 gui=NONE
  hi VertSplit        guifg=#a0a0a0 guibg=#a0a0a0 gui=NONE
  hi Folded           guifg=#707070 guibg=#e8e8e8 gui=NONE
  hi FoldColumn       guifg=#707070 guibg=#b0b0b0 gui=bold

  hi WildMenu         guifg=#000000 guibg=#A6DB29 gui=none
  hi Question         guifg=#000000 guibg=#A6DB29 gui=none
  hi MoreMsg          guifg=#000000 guibg=#A6DB29 gui=none

  hi ModeMsg          guifg=#000000 guibg=#A6DB29
  hi WarningMsg       guifg=#d82020 guibg=NONE    gui=bold


  hi TabLine          guifg=#afd700 guibg=#005f00 gui=none
  hi TabLineSel       guifg=#005f00 guibg=#afd700 gui=none
  hi TabLineFill      guifg=#303030 guibg=#a0a0a0 gui=none

  hi SignColumn       guifg=#A6E22E guibg=#c9c4c4

  hi Pmenu            guifg=#000000 guibg=#e8e8e8 gui=NONE
  hi PmenuSel         guifg=#000000 guibg=#A6DB29 gui=bold
  hi PmenuSbar                      guibg=#a0a0a0
  hi PmenuThumb                     guibg=#555555


  " Language Specific ##########################################################
  
  " Python (non-default syntax file)
  hi PythonOperator   guifg=#0167dd               gui=none
  hi pythonDocstring        guifg=#004B84 guibg=NONE    gui=none
  hi pythonDoctest    guifg=#0000af
  hi link pythonDocTest pythonDoctest
  hi link pythonDocTest2 pythonDoctest
  " C
  hi cType            guifg=#66b600 ctermfg=70
  hi link javaType cType
  hi link TexType Function

  " Embedded inside HTML <script>
  hi javaScript       guifg=#486050 guibg=NONE    gui=none

  " htmldjango
  hi DjangoBlock      guifg=#005f00               gui=bold
  hi link djangoTagBlock DjangoBlock
  hi link djangoVarBlock DjangoBlock
  hi link djangoFilter   Typedef

  hi markdownUrl      guifg=#005faf gui=underline ctermfg=25 cterm=underline

  hi link mailHeader  Comment
  hi link mailSubject	Constant
  hi link mailURL	    CommentURL
  hi link mailEmail   Identifier
  hi mailQuoted1	    ctermfg=17	guifg=#00005f
  hi mailQuoted2	    ctermfg=22	guifg=#005f00
  hi mailQuoted3	    ctermfg=19	guifg=#0000af
  hi mailQuoted4	    ctermfg=34 	guifg=#00af00
  hi mailQuoted5	    ctermfg=21	guifg=#0000ff
  hi mailQuoted6	    ctermfg=71	guifg=#5faf5f
  hi mailQuoted7	    ctermfg=21	guifg=#5f5faf
  hi mailQuoted8	    ctermfg=101	guifg=#87875f
  hi mailSignature    ctermfg=209	guifg=#ff0000


  " Plugins ####################################################################
  
  " https://github.com/kien/ctrlp.vim
  hi link CtrlPMatch    Search
 
  " https://github.com/scrooloose/nerdtree
  hi NERDTreeDir      guifg=#0087d7 gui=bold ctermfg=32 cterm=bold
  hi link NERDTreeDirSlash NERDTreeDir
  hi link NERDTreeOpenable NERDTreeDir
  hi NERDTreeClosable guifg=#008700  guibg=#5fd75f gui=bold ctermfg=28 ctermbg=77 cterm=bold
  hi NERDTreePart     guifg=#c0c0c0 ctermfg=250
  hi NERDTreePartFile guifg=#000000 gui=bold ctermfg=16 cterm=bold
  hi NERDTreeLinkFile guifg=#ffaf00 ctermfg=214
  hi NERDTreeLinkDir  guifg=#ffaf00 ctermfg=214

  " https://github.com/majutsushi/tagbar
  hi link TagbarSignature Comment
  hi TagbarScope      guifg=#0087d7 gui=bold ctermfg=32 cterm=bold
  hi TagbarType       guifg=#66b600 gui=bold ctermfg=70 cterm=bold
  hi TagbarKind       guifg=#0000ff ctermfg=21
  
  " https://github.com/justinmk/vim-sneak
  hi SneakPluginTarget guibg=#ffaf00 guifg=#ffff00 gui=bold ctermbg=214 ctermfg=226 cterm=bold
  hi link SneakPluginScope Visual

  " https://github.com/rhysd/clever-f.vim
  hi CleverFDefaultLabel guibg=#ffd700 guifg=#000000 gui=bold ctermbg=220 ctermfg=16 cterm=bold

  " https://github.com/mhinz/vim-startify
  hi StartifyBracket  guifg=#00d7ff  guibg=#005f87 gui=bold ctermfg=45 ctermbg=24 cterm=bold
  hi StartifyFile     guifg=#005fd7 ctermfg=26
  hi StartifyHeader   guifg=#005fd7 ctermfg=26
  hi link StartifyFooter StartifyHeader
  hi StartifyNumber   ctermfg=215 guifg=#00ff00  guibg=#005f87 gui=bold ctermfg=46 ctermbg=24 cterm=bold
  hi StartifyPath     guifg=#878787 ctermfg=242
  hi StartifySlash    guifg=#000000 ctermfg=16
  hi StartifySpecial  guifg=#666666 guibg=#d7d7d7 ctermfg=242 ctermbg=252

  " https://github.com/davidhalter/jedi-vim
  hi jediFunction     guibg=#878787 guifg=#f0f0f0 ctermbg=244 ctermfg=255
  hi jediFat          guibg=#878787 guifg=#afd700 gui=bold ctermbg=244 ctermfg=148 cterm=bold
  
  " https://github.com/tomtom/quickfixsigns_vim
  if g:kalisi_recolor_quickfixsigns == 1
       hi QFSignsMark       guifg=#005faf guibg=#a0a0a0 gui=bold ctermfg=25 ctermbg=247 cterm=bold
       hi QFSignsDiffAdd    guifg=#008700 guibg=#5fd75f ctermfg=28 ctermbg=77
       hi QFSignsDiffChange guifg=#5f5fd7 guibg=#afafff ctermfg=62 ctermbg=147
       hi QFSignsDiffDelete guifg=#ff5f00 guibg=#ffafaf ctermfg=202 ctermbg=217
       let g:quickfixsigns#marks#texthl = "QFSignsMark"
       let g:quickfixsigns#vcsdiff#highlight = {'DEL': 'QFSignsDiffDelete', 'ADD': 'QFSignsDiffAdd', 'CHANGE': 'QFSignsDiffChange'}
  endif

  " 256 Color Terminal (light) ################################################
  if &t_Co > 255
    hi Normal ctermbg=255 ctermfg=16
    hi Comment ctermfg=110
    hi CommentURL cterm=underline ctermfg=75
    hi CommentEmail cterm=underline ctermfg=75
    hi SpecialComment cterm=bold ctermfg=67
    hi Constant cterm=bold ctermfg=19
    hi String ctermfg=24
    hi Character ctermfg=98 cterm=bold
    hi Number ctermfg=25
    hi Boolean ctermfg=70
    hi Float ctermfg=36
    hi Identifier ctermfg=18
    hi Function ctermfg=32
    hi Statement cterm=bold ctermfg=70
    hi Conditional cterm=bold ctermfg=32
    hi Repeat cterm=bold ctermfg=32
    hi Label cterm=bold ctermfg=28
    hi Operator ctermfg=25
    hi Exception cterm=bold ctermfg=24
    hi PreProc cterm=bold ctermfg=161
    hi Include cterm=bold ctermfg=161
    hi Define ctermfg=161
    hi Macro cterm=bold ctermfg=160
    hi PreCondit ctermfg=32
    hi Type ctermfg=202
    hi StorageClass cterm=none ctermfg=20
    hi Structure ctermfg=25
    hi Typedef ctermfg=25
    hi Special cterm=bold ctermfg=214
    hi SpecialChar cterm=bold ctermfg=197
    hi Tag cterm=bold ctermfg=21
    hi Delimiter ctermfg=161
    hi Debug cterm=bold ctermfg=178
    hi Underlined cterm=underline ctermfg=234
    hi Error cterm=underline ctermbg=252 ctermfg=160
    hi ErrorMsg cterm=bold ctermbg=188 ctermfg=160
    hi Todo cterm=bold ctermbg=226 ctermfg=16
    hi Directory cterm=bold ctermfg=25
    hi Keyword ctermfg=70
    hi Title cterm=bold ctermfg=25
    hi NonText ctermbg=253 ctermfg=16
    hi Conceal ctermbg=253 ctermfg=236
    hi DiffAdd ctermbg=194
    hi DiffChange ctermbg=254
    hi DiffText cterm=bold ctermbg=189 ctermfg=17
    hi DiffDelete cterm=bold ctermbg=224 ctermfg=252
    hi SpellBad cterm=undercurl ctermfg=196
    hi SpellCap cterm=undercurl ctermfg=20
    hi SpellLocal cterm=undercurl ctermfg=28
    hi SpellRare cterm=undercurl ctermfg=240
    hi Visual ctermbg=153
    hi VisualNOS ctermbg=253
    hi Cursor ctermbg=196 ctermfg=231
    hi CursorLineNr cterm=bold ctermbg=251 ctermfg=254
    hi CursorLine ctermbg=254 cterm=none
    hi CursorColumn ctermbg=254
    hi MatchParen ctermbg=221 ctermfg=231
    hi Search cterm=bold ctermbg=148 ctermfg=16
    hi IncSearch cterm=reverse ctermbg=16 ctermfg=220
    hi LineNr ctermbg=253 ctermfg=242
    hi StatusLine ctermfg=254 ctermbg=242 term=NONE cterm=NONE
    hi StatusLineNC ctermbg=247 ctermfg=254 term=NONE cterm=NONE
    hi VertSplit ctermbg=247 ctermfg=247
    hi Folded ctermbg=254 ctermfg=242
    hi FoldColumn cterm=bold ctermbg=145 ctermfg=242
    hi WildMenu ctermbg=148 ctermfg=16
    hi Question ctermbg=148 ctermfg=16
    hi MoreMsg ctermbg=148 ctermfg=16
    hi ModeMsg cterm=bold ctermbg=148 ctermfg=16
    hi WarningMsg cterm=bold ctermfg=160
    hi TabLine ctermbg=22 ctermfg=148 cterm=none
    hi TabLineSel ctermbg=148 ctermfg=22 cterm=none
    hi TabLineFill ctermbg=247 ctermfg=236 cterm=none
    hi SignColumn ctermbg=251 ctermfg=148
    hi Pmenu ctermbg=254 ctermfg=16
    hi PmenuSel cterm=bold ctermbg=148 ctermfg=16
    hi PmenuSbar ctermbg=247
    hi PmenuThumb ctermbg=240
    hi PythonOperator ctermfg=26
    hi pythonDocstring ctermfg=24
    hi pythonDoctest ctermfg=19
    hi javaScript ctermfg=59
    hi DjangoBlock cterm=bold ctermfg=22
  endif
endif 
