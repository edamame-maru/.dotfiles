set nu 
set nowrap 
set ai
set si
set hls
set ts=8
set sts=4
set shiftwidth=4
set noet 
set enc=utf8
set termguicolors
set background=dark
syntax enable
let loaded_matchparen = 0

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin()

" List your plugins here
" Plug 'jiangmiao/auto-pairs'
Plug 'lifepillar/vim-solarized8'
Plug 'dense-analysis/ale'

call plug#end()


let g:ale_completion_enabled = 1
let g:ale_linters = {
\   'rust': ['analyzer'],
\   'python': ['pylsp'],
\}

colo solarized8


