set nocompatible              " Disable compatibility mode with vi
filetype off                  " Must be disabled first

" --- Vundle Plugin Manager ---
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'              " Vundle manages itself
Plugin 'scrooloose/nerdtree'        " File explorer
Plugin 'Valloric/YouCompleteMe'     " Auto-completion (requires compilation and installation)
Plugin 'majutsushi/tagbar'          " Function/Class outline viewer
" Recommended Python indentation plugin
Plugin 'Vimjas/vim-python-pep8-indent'

call vundle#end()
filetype plugin indent on           " Must be enabled

" --- Basic Display Settings ---
set t_Co=256
colorscheme torte
syntax on
set nu                              " Show line numbers
set cursorline                      " Highlight current line
hi CursorLine cterm=none ctermbg=236 ctermfg=none " Slightly darker gray without affecting readability
set colorcolumn=81
highlight ColorColumn ctermbg=6

" Indentation settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent

" --- Key Mappings ---
" NERDTree
map <C-f> :NERDTreeToggle<CR>
let NERDTreeNodeDelimiter = "\t"

" Tagbar (auto-open for Python files)
let g:tagbar_width=30
nmap <F8> :TagbarToggle<CR>
autocmd BufReadPost *.py,*.c,*.cpp call tagbar#autoopen()

" Auto-complete brackets/quotes (fix cursor position after escape)
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

" --- Advanced Ctags & Cscope Settings ---
" tags search order: current directory -> search upward until root
set tags=./tags;,tags;
set cscopetag
set csto=0 " Search cscope first, then tags

if has("cscope")
    set nocscopeverbose
    " Avoid duplicate loading errors
    if filereadable("cscope.out")
        silent! cs kill -1
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set cscopeverbose
endif

" Cscope key mappings (keep your z-series shortcuts)
nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>

" --- Other Optimizations ---
set backspace=indent,eol,start
set history=100
set completeopt-=preview " Disable the ugly preview window on top from YouCompleteMe
