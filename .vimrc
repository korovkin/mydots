set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set tabstop=2
set shiftwidth=2
set nu
set hlsearch
set nowrap
set ignorecase
set statusline=\ %y\ line:\ %l\ total:\ %L\ column:\ %v\ file:\ %m\ \ %F
set laststatus=2
set showmatch
set incsearch
set ruler
set ai
set expandtab
set wildignore+=*.o,*.obj,.git,*.pyc,*.pdf,*.node,*.dep,*.*~
set directory^=$HOME/.vim_tmp/tmp//
set noswapfile

au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.go set expandtab

if &diff
    set nospell
endif

" cscope stuff
if has("cscope")
  set cscopequickfix=s-,c-,d-,i-,t-,e-,g-,f-
  set csprg=cscope
  set csto=0
  set cst
  set nocsverb " add any database in current directory, if not keep going upwards in the directory tree until you find a cscope.out file
  if $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  else
    let dir = getcwd()
    while dir != ""
      let f = dir . "/cscope.out"
      if filereadable (f)
        execute "cs add " . f
        break
      endif
      let dir = substitute (dir, "/[^/]*$", "", "")
    endwhile
  endif
  set csverb
endif

" cscope shortcuts:
nmap <C-s><C-s> :cs find s <C-R>=expand("<cword>")<CR>
nmap <C-g><C-g> :cs find g <C-R>=expand("<cword>")<CR>
nmap <C-c><C-c> :cs find c <C-R>=expand("<cword>")<CR>
nmap <C-f><C-f> :cs find f
nmap <C-v><C-v> :Vexplore <CR>
nmap <C-e><C-e> :cs find e <C-R>=expand("<cword>")<CR>
nmap <C-d><C-d> :cs find d <C-R>=expand("<cword>")<CR>
nmap <C-S-g><C-S-g> :grep -rnI <C-R>=expand("<cword>")." * " <CR>

" search and replace:
nmap <C-r><C-r> :0s/<C-R>=expand("<cword>")<CR>/<C-R>=expand("<cword>")<CR>/Igc 1000000

" ctrlp:
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_files=200000
let g:ctrlp_by_filename = 1
let g:ctrlp_max_height = 40
let g:ctrlp_switch_buffer = 'e'
let g:ctrlp_regexp = 1
let g:ctrlp_lazy_update = 1
let g:ctrlp_user_command='find %s -type f -name *.c -o -name *.m -o -name *.h -o -name *.mm -o -name *.cpp -o -name *.hh -o -name *.py -o -name *.java -o -name *.json -o -name *.plist -o -name *.rb -o -name *.pbxproj'

function! FindMatch(items, str, limit, mmode, ispath, crfile, regex)
  let query = a:str
  if query == ""
    let query = "."
  endif
  let cmd = '~/v/scripts/find_file.py '.query.' | head -n 200'
  return split(system(cmd), "\n")
endfunction

let g:ctrlp_match_func = { 'match': 'FindMatch' }

call pathogen#infect()

if has("gui_running")
  set lines=35 columns=120
	" colorscheme blueshift
	" colorscheme winter
	" colorscheme foursee
	" colorscheme 1989
	colorscheme dual
	" colorscheme abra
  " set guifont=Courier\ 10\ Pitch\ 12
  " set guifont=Monospace\ Bold\ 10
  " set guifont=Monospace\ 12"
  set guifont=DejaVu\ Sans\ Mono:h18
  " set guifont=Monaco:h14
  " set guifont=DejaVu\ Sans\ Mono:h16
  " set guifont=Menlo\ Regular:h18
  " set guifont=Hack:h18
else
	colorscheme default
endif

let g:go_list_type = "quickfix"

set rtp+=/usr/local/opt/fzf

" delete some white space:
autocmd BufWritePre * :%s/\s\+$//e
