let g:python_recommended_style = 0
syntax on
set nohlsearch
set expandtab
set shiftwidth=2
set tabstop=2
let @a = 'yyp:s/./=/g'
let @c = '@a/^\D'
set cursorline
set shiftround
highlight CursorLine gui=underline
autocmd FileType html :source ~/.vim/html.vim
autocmd FileType tex :source ~/.vim/latex.vim
autocmd FileType javascript :source ~/.vim/js.vim
autocmd BufRead,BufNewFile *.md :source ~/.config/nvim/markdown.vim
autocmd BufRead,BufNewFile *.ptmd :source ~/.config/nvim/markdown.vim
autocmd BufRead,BufNewFile *.md :setf markdown
autocmd BufRead,BufNewFile *.ptmd :setf markdown
autocmd BufRead,BufNewFile *.stuff set filetype=bash
autocmd BufRead,BufNewFile * :set formatoptions-=cro
set relativenumber
set cmdheight=2

inoremap jk <esc>
inoremap JK <esc>

" force you to learn hjkl
" inoremap <esc> <nop>
inoremap <c-c> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>


nnoremap \wr :set wrap<cr>
nnoremap \nw :set nowrap<cr>

let mapleader = " "
" copy and paste
vnoremap <leader>pc :w<home>silent <end> !pc<cr>
nnoremap <leader>pp :r! pp<cr>
nnoremap <leader>cf :silent :w !pc %<cr>

" get and put
vnoremap <leader>pu :w<home>silent <end> !put
nnoremap ge :r!<space>get<space>
nnoremap sls :!storels<cr>

nmap ; :

set number
set relativenumber
nnoremap <leader>rn :set relativenumber<cr>
nnoremap <leader>an :set norelativenumber<crn

set formatoptions-=cro
nnoremap <leader>autocom :set formatoptions+=cro<cr>
nnoremap <leader>nocom :set formatoptions-=cro<cr>
function SetCro()
  nnoremap \c :set formatoptions-=cro<cr>
  nnoremap \C :set formatoptions+=cro<cr>
endfunction

nnoremap <leader>config :tabedit ~/.config/nvim<cr>

set formatoptions-=cro

"highlight LineNr guibg=darkblue guifg=white
"highlight CursorLineNr guibg=darkred guifg=white
highlight Folded guibg=darkblue
highlight Tabline guifg=black
highlight CursorLine guibg=black

nnoremap <leader>cro :set formatoptions=jlqb<cr>:echom "Disabled cro"<cr>
nnoremap <leader>crr :set formatoptions+=cro<cr>:echom "Enabled cro"<cr>

nnoremap <A-n> 1n
" nnoremap <leader>S /^\/\*\*\*<cr> 
" nnoremap <leader>is 0i/*** X ***/<esc>FXxi

nnoremap \px "zyiw:let @z=system('get ' . @z)<cr>
nnoremap \pz "zyiw:let @z=system('echo "${' . @z . '}"')<cr>

function JKToggle()
  if s:jkmapped == 1
    call JKNormal()
  else
    call JKMoves()
  endif
endfunction

function JKMoves() 
  nnoremap J gj
  nnoremap K gk
  let s:jkmapped = 1
endfunction

function JKNormal()
  if maparg("J") != ""
    unmap J
  endif
  if maparg("K") != ""
    unmap K
  endif
  let s:jkmapped = 0
endfunction
call JKNormal()
function! JdaNarrowN(n)
  set wrapmargin=0
  set formatoptions+=t
  set linebreak
  execute 'set textwidth=' . a:n
  execute 'set colorcolumn=' . a:n
endfunction

function! JdaNarrow()
  call JdaNarrowN(40)
endfunction

function! JdaNotNarrow()
  set textwidth=0
  set wrapmargin=0
  set wrap 
  set formatoptions-=t
  set linebreak
  set colorcolumn=0
endfunction
nnoremap \narn :call JdaNotNarrow()<cr>
nnoremap \nar3 :call JdaNarrowN(30)<cr>
nnoremap \nar4 :call JdaNarrowN(40)<cr>
nnoremap \nar5 :call JdaNarrowN(50)<cr>
nnoremap \nar6 :call JdaNarrowN(60)<cr>
nnoremap \nar7 :call JdaNarrowN(70)<cr>
nnoremap \nar8 :call JdaNarrowN(80)<cr>

nnoremap \jkl :call JKToggle()<cr>
