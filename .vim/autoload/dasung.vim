
" start of dasung function
"
function! dasung#Dasung()
    " Specify a readable color scheme.
        colorscheme bw
        colorscheme meink
        set guifont=Bitstream_Vera_Sans_Mono:h16:cANSI
        set background=light
    " Cursor, in a light color: avoiding the traces.
        " highlight iCursor guifg=Black guibg=LightYellow
        " set guicursor+=i:ver25-iCursor
        " set guicursor+=i:blinkwait10
    " denote the current line of the cursor.
        set cursorline
        hi CursorLine guibg=LightYellow
    " Highlighting for search pattern
        hi Search guifg=White guibg=LightBlue
    " Highlighting for Folded code block
        hi Folded guibg=LightYellow
    " Colorization for Visual Mode
        hi Visual  guifg=White guibg=LightBlue gui=none
    " ColorColumn (as the 80 char divider)
        hi ColorColumn ctermbg=lightgrey guibg=LightYellow
    " Matching parameters, and vimtex matching environments.
        hi MatchParen cterm=bold guibg=LightBlue guifg=White
    " Send the Vim session to full screen.
        " Fullscreen
endfun
