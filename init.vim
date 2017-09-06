if &compatible
  set nocompatible
endif

set runtimepath+=~/.config/nvim
set runtimepath+=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.config/nvim/bundle'))
  call dein#begin(expand('~/.config/nvim/bundle'))

  call dein#add('Shougo/dein.vim')
  call dein#add('SirVer/ultisnips')
  call dein#add('scrooloose/nerdtree')

  " Auto-complete shit
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  call dein#add('zchee/deoplete-clang')
  call dein#add('carlitux/deoplete-ternjs', {'build': 'npm install -g tern'})
  call dein#add('othree/jspc.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set t_Co=256
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
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
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = ['tern#Complete', 'jspc#omni']

let g:deoplete#sources#ternjs#case_insensitive = 1

set completeopt=longest,menuone
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']

let g:deoplete#sources#go#gocode_binary = '/home/bashfu/Code/go/bin/gocode'
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-4.0/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-4.0/lib/clang'
