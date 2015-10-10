" ~/.vim/sessions/sensor.vim:
" Vim session script.
" Created by session.vim 2.12 on 16 September 2015 at 01:04:44.
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
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/mygit/SensorRecorder/analysis/scripts/traceMpl
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +37 plotBarometerAlongHeelStrikes.py
badd +1014 TraceReader.py
badd +8 testAccCrossDimCorrelation.py
badd +33 testMagnitudeCorrelation.py
badd +35 testTurn.py
badd +33 plotBarometer.py
badd +148 Util.py
badd +243 ~/.vimrc
argglobal
silent! argdel *
argadd plotBarometerAlongHeelStrikes.py
edit \[File\ List]
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 1resize ' . ((&columns * 30 + 104) / 209)
exe '2resize ' . ((&lines * 29 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 30 + 104) / 209)
exe '3resize ' . ((&lines * 44 + 30) / 60)
exe 'vert 3resize ' . ((&columns * 85 + 104) / 209)
exe '4resize ' . ((&lines * 6 + 30) / 60)
exe 'vert 4resize ' . ((&columns * 85 + 104) / 209)
exe '5resize ' . ((&lines * 25 + 30) / 60)
exe 'vert 5resize ' . ((&columns * 92 + 104) / 209)
exe '6resize ' . ((&lines * 25 + 30) / 60)
exe 'vert 6resize ' . ((&columns * 92 + 104) / 209)
exe '7resize ' . ((&lines * 6 + 30) / 60)
exe 'vert 7resize ' . ((&columns * 178 + 104) / 209)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 024|
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
edit TraceReader.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
18
silent! normal! zo
72
silent! normal! zo
104
silent! normal! zo
355
silent! normal! zo
411
silent! normal! zo
423
silent! normal! zo
435
silent! normal! zo
479
silent! normal! zo
735
silent! normal! zo
852
silent! normal! zo
916
silent! normal! zo
931
silent! normal! zo
940
silent! normal! zo
966
silent! normal! zo
1008
silent! normal! zo
1112
silent! normal! zo
let s:l = 915 - ((0 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
915
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
edit Util.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
127
silent! normal! zo
let s:l = 148 - ((24 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
148
normal! 0
wincmd w
argglobal
edit plotBarometerAlongHeelStrikes.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 54 - ((21 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 027|
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
6wincmd w
exe '1resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 1resize ' . ((&columns * 30 + 104) / 209)
exe '2resize ' . ((&lines * 29 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 30 + 104) / 209)
exe '3resize ' . ((&lines * 44 + 30) / 60)
exe 'vert 3resize ' . ((&columns * 85 + 104) / 209)
exe '4resize ' . ((&lines * 6 + 30) / 60)
exe 'vert 4resize ' . ((&columns * 85 + 104) / 209)
exe '5resize ' . ((&lines * 25 + 30) / 60)
exe 'vert 5resize ' . ((&columns * 92 + 104) / 209)
exe '6resize ' . ((&lines * 25 + 30) / 60)
exe 'vert 6resize ' . ((&columns * 92 + 104) / 209)
exe '7resize ' . ((&lines * 6 + 30) / 60)
exe 'vert 7resize ' . ((&columns * 178 + 104) / 209)
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
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
4wincmd w
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
7wincmd w
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
1resize 28|vert 1resize 30|2resize 29|vert 2resize 30|3resize 44|vert 3resize 85|4resize 6|vert 4resize 85|5resize 25|vert 5resize 92|6resize 25|vert 6resize 92|7resize 6|vert 7resize 178|
6wincmd w
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
