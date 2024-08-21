set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'gmarik/vundle'
Bundle 'majutsushi/tagbar'
Bundle 'yggdroot/leaderf'
Bundle 'pseewald/vim-anyfold'


call vundle#end()            " required
filetype plugin indent on    " required

:map <C-f> :NERDTree<CR>

set t_Co=256
"colorscheme skyhawk
colorscheme torte
set expandtab
syntax on
set tabstop=4
set shiftwidth=4
set cursorline
hi CursorLine cterm=none ctermbg=DarkMagenta ctermfg=White
set colorcolumn=81
highlight ColorColumn ctermbg=6
""set cursorcolumn
""hi CursorColumn cterm=none ctermbg=DarkMagenta ctermfg=White
set nu
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
"set listchars=tab:»·
"set list


hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
set history=100
"retab
"
let NERDTreeNodeDelimiter = "\t" "if Missing first character in tree structure
set backspace=indent,eol,start
set tags=./tags,./TAGS,tags;~,TAGS;~
set cscopetag
set csto=0

if filereadable("cscope.out")
   cs add cscope.out
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif
set cscopeverbose

nmap as :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap ag :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap ac :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap at :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ae :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap af :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap ai :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap ad :cs find d <C-R>=expand("<cword>")<CR><CR>

" Tagbar
let g:tagbar_width=50
autocmd BufReadPost *.cpp,*.c,*.h,*.cc,*.cxx,*.py call tagbar#autoopen()

set foldmethod=manual

filetype plugin indent on " required
syntax on                 " required
autocmd Filetype * AnyFoldActivate               " activate for all filetypes
set foldlevel=0  " close all folds
