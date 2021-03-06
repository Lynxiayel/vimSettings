" ~/.vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.12 on 05 August 2015 at 12:56:36.
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
call setqflist([{'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/home/lynxiayel/mygit/SensorRecorder/analysis/scripts/traceMpl/testDirectionZee.py', 'text': '(/usr/share/texmf/tex/latex/cite/cite.sty)'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/home/lynxiayel/mygit/SensorRecorder/analysis/scripts/traceMpl/testDirectionZee.py', 'text': '(/usr/share/texmf/tex/latex/caption/subcaption.sty)'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/home/lynxiayel/mygit/SensorRecorder/analysis/scripts/traceMpl/testDirectionZee.py', 'text': '(./paper.aux)'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'paper.tex', 'text': 'LaTeX Warning: No \author given.'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'paper.tex', 'text': 'LaTeX Warning: No \author given.'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'paper.tex', 'text': 'LaTeX Warning: No \author given.'}, {'lnum': 110, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'E', 'pattern': '', 'filename': 'parts/design.tex', 'text': 'Limit controls must follow a math operator.  argmax\limits                         _{\lambda \in [0.4f,2f]} NAC(k,\lambda ) ...ts_{\lambda\in [0.4f,2f]} NAC(k,\lambda)}                                                 $$  <use  "figures/motion_new/up.pdf" >  [3] <use  "figures/walk_pat.pdf" >  <use  "figures/stairs_down_pat.pdf" >'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/home/lynxiayel/mygit/SensorRecorder/analysis/scripts/traceMpl/testDirectionZee.py', 'text': '(./parts/evaluation.tex'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/home/lynxiayel/mygit/SensorRecorder/analysis/scripts/traceMpl/testDirectionZee.py', 'text': '(./parts/related.tex'}])
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
badd +1 ~/mygit/SensorRecorder/analysis/scripts/traceMpl/testFFT.py
badd +45 ~/mygit/SensorRecorder/analysis/scripts/traceMpl/plotMagHorzFilt.py
badd +15 parts/related.tex
badd +0 paper.tex
badd +1 parts/design.tex
badd +295 ~/mygit/SensorRecorder/analysis/scripts/traceMpl/TracePlotter.py
badd +150 ~/.vimrc
badd +1 map\ \<silent>\ \<leader>wm\ :WMToggle\<cr>
badd +1 paper.aux
badd +1 plotFFT.py
badd +19 ~/mygit/SensorRecorder/analysis/scripts/traceMpl/plotFFT.py
badd +887 paper.log
badd +26 ~/mygit/SensorRecorder/analysis/scripts/traceMpl/testDirectionZee.py
badd +0 ~/mygit/SensorRecorder/analysis/scripts/traceMpl/TraceReader.py
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
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 25 + 30) / 60)
exe 'vert 1resize ' . ((&columns * 30 + 104) / 209)
exe '2resize ' . ((&lines * 25 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 30 + 104) / 209)
exe '3resize ' . ((&lines * 51 + 30) / 60)
exe 'vert 3resize ' . ((&columns * 89 + 104) / 209)
exe '4resize ' . ((&lines * 51 + 30) / 60)
exe 'vert 4resize ' . ((&columns * 88 + 104) / 209)
exe '5resize ' . ((&lines * 6 + 30) / 60)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 9 - ((8 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
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
edit ~/mygit/SensorRecorder/analysis/scripts/traceMpl/TraceReader.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
18
silent! normal! zo
623
silent! normal! zo
735
silent! normal! zo
1112
silent! normal! zo
let s:l = 1142 - ((218 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1142
normal! 09|
wincmd w
argglobal
edit ~/mygit/SensorRecorder/analysis/scripts/traceMpl/testDirectionZee.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 26 - ((25 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
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
let s:l = 887 - ((3 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
887
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 25 + 30) / 60)
exe 'vert 1resize ' . ((&columns * 30 + 104) / 209)
exe '2resize ' . ((&lines * 25 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 30 + 104) / 209)
exe '3resize ' . ((&lines * 51 + 30) / 60)
exe 'vert 3resize ' . ((&columns * 89 + 104) / 209)
exe '4resize ' . ((&lines * 51 + 30) / 60)
exe 'vert 4resize ' . ((&columns * 88 + 104) / 209)
exe '5resize ' . ((&lines * 6 + 30) / 60)
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
1resize 25|vert 1resize 30|2resize 25|vert 2resize 30|3resize 51|vert 3resize 89|4resize 51|vert 4resize 88|5resize 6|vert 5resize 209|
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
