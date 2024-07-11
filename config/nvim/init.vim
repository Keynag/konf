"NV_K73

hi  Normal ctermbg=NONE guibg=NONE

syntax on

"[settings]
set so=30
set number
set ttyfast
set mouse=a
set hlsearch
set incsearch
set smartcase
set ignorecase
set nocompatible
set encoding=utf8
set clipboard=unnamedplus
set wildmode=longest,list

"{tabs}
set smarttab
set expandtab
set tabstop=4
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4


"Plugins
filetype plugin indent on

call plug#begin("~/.config/nvim/plugged")
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Включить/выключить NERDTree при нажатии Ctrl+e
nnoremap <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"
" Юникодные иконки папок (Работает только с плагином vim-devicons)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" Показывает количество строк в файлах
let g:NERDTreeFileLines = 1
" Игнорировать указанные папки
let g:NERDTreeIgnore = ['^node_modules$', '^__pycache__$', ".cache", ".fonts", ".gnupg", ".icons", ".mozilla", ".steam", ".themes", ".npm"]
" Закрыть vim, если единственная вкладка - это NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='violet'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Автокомплиты через Tab
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
