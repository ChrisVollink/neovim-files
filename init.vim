if &compatible
  set nocompatible
endif

set runtimepath+=~/.config/nvim
set runtimepath+=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.config/nvim/bundle'))
  call dein#begin(expand('~/.config/nvim/bundle'))

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  call dein#add('SirVer/ultisnips')
  call dein#add('scrooloose/nerdtree')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set t_Co=256
set tabstop=4
set softtabstop=2
set shiftwidth=2
set expandtab
colorscheme hydrangea

" No shitty undo
nnoremap U :echo " < < ===== C H E C K C A P S L O C K ===== > > "<CR>


" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set backspace=2
" set mouse=


" Set Up UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Enable Deoplete
let g:deoplete#enable_at_startup = 1
