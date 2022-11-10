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
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround' " cs, ys, ds
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive' " :Git
Plug 'tpope/vim-eunuch' " :Mkdir, :SudoWrite, :SudoEdit, :Move, :Rename
Plug 'airblade/vim-gitgutter' " ]c, [c
Plug 'christoomey/vim-tmux-navigator' " ctrl + hjkl to navigate
call plug#end()

set signcolumn=yes " always show sign column

" sign column color to matches bg
highlight clear SignColumn
