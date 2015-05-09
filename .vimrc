set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'klen/python-mode'
Plugin 'moll/vim-node'
Plugin 'Chiel92/vim-autoformat'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
    finish
endif

" set the mouse
if has("gui_running")
    set mouse=a
else
    set mouse=
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
    set nobackup		" do not keep a backup file, use versions instead
else
    set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
    set guifont=Monospace\ 11
    set lines=999 columns=999
endif


" Only do this part when compiled with support for autocommands.
if has("autocmd")

    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on

    " Put these in an autocmd group, so that we can delete them easily.
    augroup vimrcEx
        au!

        " For all text files set 'textwidth' to 78 characters.
        autocmd FileType text setlocal textwidth=78

        " When editing a file, always jump to the last known cursor position.
        " Don't do it when the position is invalid or when inside an event handler
        " (happens when dropping a file on gvim).
        " Also don't do it when the mark is in the first line, that is the default
        " position when opening a file.
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif

    augroup END
else

    set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd l | diffthis
endif
"Set mapleader
let mapleader = ","

" diff current buf with originial file
nmap <leader>do :DiffOrig<cr>
"Fast reloading of the .vimrc
map <silent> <leader>sv :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ev :e ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 

""""""""""""""""Sessions
function! SaveSession()
    set sessionoptions-=curdir        "在session option中去掉curdir
    set sessionoptions+=sesdir        "在session option中加入sesdir
    mksession! session.vim               "创建一个会话文件
    wviminfo! session.viminfo            "创建一个viminfo文件
    qa           
endfunction

map <silent> <leader>ssv :call SaveSession()<cr>

function! LoadSession()
    source session.vim  "载入会话文件
    rviminfo session.viminfo            "读入viminfo文件
endfunction

map <silent> <leader>lsv :call LoadSession()<cr>

""""""""""""""TagList
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim

"""""""""""""""Netrw
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr> 

""""""""""""""winManager setting
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
map <silent> <leader>lu :FirstExplorerWindow<cr>
map <silent> <leader>lb :BottomExplorerWindow<cr>
map <silent> <leader>wm :WMToggle<cr> 

""""""""""""""File saving shortcuts
map <silent> <leader>wa :wa<cr> 
map <silent> <leader>ww :w<cr> 

""""""""""""""color scheme
colorscheme lucius
" LuciusBlackLowContrast
" LuciusBlackHighContrast
LuciusDarkHighContrast
" colorscheme murphy
" colorscheme vividchalk

""""""""""""""spell check operations
map <silent> <leader>sc :setlocal spell! spelllang=en_us<CR>

""""""""""""""tab operations
map <silent> <leader>tn :tabnew<cr>
map <silent> <leader>m :tabprevious<cr>
map <silent> <leader>n :tabnext<cr>

""""""""""""""quit operations
map <silent> <leader>qa :qa<cr>


""""""""""""""stop highlighting after search
map <silent> <leader>nh :nohl<cr>

" """"""""""""""Enable Pathogen
" execute pathogen#infect()
" call pathogen#helptags()

""""""""""""""Settings for latex-suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_GotoError=0
function! SyncTexForward()
    let s:syncfile = fnamemodify(fnameescape(Tex_GetMainFileName()), ":r").".pdf"
    let execstr = "silent !okular --unique ".s:syncfile."\\#src:".line(".").expand("%\:p").' &'
    exec execstr
endfunction
nnoremap <Leader>lf :call SyncTexForward()<CR>

""""""""""""""Disable beeping and flashing
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

""""""""""""""Built-in explorer
noremap <leader>ex :Explore<CR>

""""""""""""""Autoformatting
noremap <leader>fm :Autoformat<CR><CR>

""""""""""""""Pymode
let g:pymode_lint_unmodified = 1
let g:pymode_lint_sort = ['E', 'W', 'C']
let g:pymode_options_max_line_length = 79
let g:pymode_rope_show_doc_bind = '<leader>dc'
let g:pymode_rope_goto_definition_bind = '<leader>gd'


""""""""""""""Fcitx
set ttimeoutlen=100

""""""""""""""Insert newline without leaving normal mode
nmap <CR> o<ESC>
nmap <S-CR> O<ESC>

""""""""""""""window operations
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-l> :wincmd l<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-k> :wincmd k<CR>
map <F6> <c-w>w
"
""""""""""""""Misc settings
set background=dark
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
set fenc=utf-8 " default fileencoding
set fencs=utf-8,gb18030,gbk,gb2312,cp936,ucs-bom,euc-jp
set nu
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set t_Co=256
set omnifunc=syntaxcomplete#Complete
