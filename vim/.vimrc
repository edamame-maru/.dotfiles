" precede lines with numbers
set nu

" lines do not trail onto newlines 
set nowrap

" copy indentation with c-style keywords
set cindent

" highlighting
syntax enable

" leave brackets unhighlighted
let g:loaded_matchparen=1

" :h tabstop (option 2)
set tabstop=4
set shiftwidth=4
set expandtab

" download vim-plug if not found 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" begin plugin list
call plug#begin()

Plug 'morhetz/gruvbox'

" end plugin list
call plug#end()

set background=dark
colo gruvbox
