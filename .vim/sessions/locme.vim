" ~/.vim/sessions/locme.vim:
" Vim session script.
" Created by session.vim 2.12 on 17 September 2015 at 07:51:48.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=Monospace\ 11
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'lucius' | colorscheme lucius | endif
call setqflist([{'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'parts/design.tex', 'text': '(/usr/share/texmf/tex/latex/cite/cite.sty'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'parts/design.tex', 'text': '(/usr/share/texmf/tex/latex/caption/subcaption.sty'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'parts/design.tex', 'text': 'LaTeX Warning: No \author given.'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'parts/design.tex', 'text': 'LaTeX Warning: No \author given.'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'parts/design.tex', 'text': 'LaTeX Warning: No \author given.'}, {'lnum': 203, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'parts/design.tex', 'text': 'LaTeX Warning: Reference `fig:no_filter'' on page 4 undefined on input line 203.'}, {'lnum': 203, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'parts/design.tex', 'text': 'LaTeX Warning: Reference `fig:filter'' on page 4 undefined on input line 203.'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'parts/design.tex', 'text': '(./parts/evaluation.tex'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'parts/design.tex', 'text': '(./parts/related.tex'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'parts/design.tex', 'text': ''}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/LocME_new
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 paper.tex
badd +1 parts/design.tex
badd +31 parts/related.tex
badd +1 parts/introduction.tex
badd +1 paper.log
badd +13 parts/bib.bib
argglobal
silent! argdel *
argadd parts/design.tex
edit \[File\ List]
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 45 + 29) / 59)
exe 'vert 1resize ' . ((&columns * 30 + 104) / 209)
exe '2resize ' . ((&lines * 4 + 29) / 59)
exe 'vert 2resize ' . ((&columns * 30 + 104) / 209)
exe '3resize ' . ((&lines * 50 + 29) / 59)
exe 'vert 3resize ' . ((&columns * 92 + 104) / 209)
exe '4resize ' . ((&lines * 33 + 29) / 59)
exe 'vert 4resize ' . ((&columns * 85 + 104) / 209)
exe '5resize ' . ((&lines * 16 + 29) / 59)
exe 'vert 5resize ' . ((&columns * 85 + 104) / 209)
exe '6resize ' . ((&lines * 6 + 29) / 59)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((5 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
argglobal
enew
" file __Tag_List__
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=9999
setlocal fml=0
setlocal fdn=20
setlocal fen
wincmd w
argglobal
edit parts/introduction.tex
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
12,12fold
13,13fold
12
silent! normal! zo
13
silent! normal! zo
let s:l = 5 - ((2 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
argglobal
edit paper.tex
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1,38fold
44,46fold
51,53fold
54,56fold
57,59fold
60,62fold
63,71fold
1
silent! normal! zo
let s:l = 9 - ((8 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
edit paper.log
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 893 - ((1 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
893
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 45 + 29) / 59)
exe 'vert 1resize ' . ((&columns * 30 + 104) / 209)
exe '2resize ' . ((&lines * 4 + 29) / 59)
exe 'vert 2resize ' . ((&columns * 30 + 104) / 209)
exe '3resize ' . ((&lines * 50 + 29) / 59)
exe 'vert 3resize ' . ((&columns * 92 + 104) / 209)
exe '4resize ' . ((&lines * 33 + 29) / 59)
exe 'vert 4resize ' . ((&columns * 85 + 104) / 209)
exe '5resize ' . ((&lines * 16 + 29) / 59)
exe 'vert 5resize ' . ((&columns * 85 + 104) / 209)
exe '6resize ' . ((&lines * 6 + 29) / 59)
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

2wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
Tlist
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
5wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
cwindow
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 45|vert 1resize 30|2resize 4|vert 2resize 30|3resize 50|vert 3resize 92|4resize 33|vert 4resize 85|5resize 16|vert 5resize 85|6resize 6|vert 6resize 209|
3wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
