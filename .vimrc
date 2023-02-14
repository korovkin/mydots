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

nmap <C-r><C-r> :0s/<C-R>=expand("<cword>")<CR>/<C-R>=expand("<cword>")<CR>/Igc 1000000

if has("gui_running")
  set lines=35 columns=120
  " colorscheme blueshift
  " colorscheme winter
  " colorscheme 1989
  colorscheme dual
  " colorscheme abra
  " colorscheme foursee
  " set guifont=Courier\ 10\ Pitch\ 12
  " set guifont=Monospace\ Bold\ 10
  " set guifont=Monospace\ 12"
  " set guifont=Monaco:h14
  " set guifont=DejaVu\ Sans\ Mono:h16
  " set guifont=Menlo\ Regular:h18
  set guifont=Hack:h18
  " set guifont=DejaVu\ Sans\ Mono:h18
  " set guifont=FiraCode-Regular:h18
else
	colorscheme default
endif

set vb t_vb=     " no visual bell & flash
set belloff=all

" delete some white space:
autocmd BufWritePre * :%s/\s\+$//e
let g:go_list_type = "quickfix"
set backspace=indent,eol,start

set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
  Plug 'fatih/vim-go', { 'tag': '*' }
  Plug 'preservim/nerdtree'
  Plug 'will133/vim-dirdiff'
  Plug 'a'
  Plug 'hashivim/vim-terraform'
call plug#end()
