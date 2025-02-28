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

" change font to firacode in gui
set guifont=Fira\ Code\ 13


" remove menubar, toolbar, scrollbars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=l

" install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()

" List your plugins here
Plug 'morhetz/gruvbox'

call plug#end()

" set colorscheme to desert
set background=dark
colo gruvbox

