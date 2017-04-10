" COLORS {{{


hi DiffAdd cterm=bold ctermfg=0 ctermbg=71
hi DiffChange  term=bold ctermbg=178 ctermfg=0
hi DiffDelete  term=bold ctermbg=124 ctermfg=0
hi DiffText    cterm=bold ctermbg=227 ctermfg=130 
" }}}

" VUNDLE {{{
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlp.vim'
Plugin 'bkad/CamelCaseMotion'
Plugin 'The-NERD-tree'
Plugin 'NERD_tree-Project'
Plugin 'fugitive.vim'
Plugin 'AutoClose'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" }}}

" UI CONFIG {{{
syntax on
set mouse=a
colorscheme xoria256
set number
set exrc " enable reading .vimrc from current dir
nmap <C-n><C-r> :set invrelativenumber<CR>
nmap <C-n><C-n> :set invnumber<CR>
" Use F5 to execute line in cmd window wihout closing it (reopen technically)
autocmd CmdwinEnter * map <buffer> <F5> <CR>q: 
" }}}
"
" SEARCH Settings {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" }}}
"
" NAVIGATION {{{
"
" To handle non C text object sections
map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>
call camelcasemotion#CreateMotionMappings('<leader>') " CamelCase movement as \w etc

" }}}

" CUSTOM MAPPINGS {{{
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>eb :vsp ~/.bashrc<CR>
nnoremap <leader>es :source $MYVIMRC<CR>
" }}}
set modelines=1
" vim:foldmethod=marker:foldlevel=0
