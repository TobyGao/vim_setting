set t_Co=256
"colorscheme skyhawk
colorscheme torte
set expandtab
syntax on
set tabstop=4
set shiftwidth=4
set cursorline
hi CursorLine cterm=none ctermbg=DarkMagenta ctermfg=White
""set cursorcolumn
""hi CursorColumn cterm=none ctermbg=DarkMagenta ctermfg=White
set nu
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
set listchars=tab:»·
set list


hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
set history=100
"retab
"
let NERDTreeNodeDelimiter = "\t" "if Missing first character in tree structure
set backspace=indent,eol,start
