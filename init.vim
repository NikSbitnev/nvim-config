" Base
set encoding=utf-8 " устанавливает кодировку в UTF-8
set number " отображает номера строк
set relativenumber " отображает относительные номера строк
set noswapfile " отключает создание файла обмена
set scrolloff=20 " указывает количество строк, оставляемых сверху и снизу при прокрутке
set mouse=a " поддержка мышки

" Ruconf
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Tabs
set expandtab " заменяет символы табуляции пробелами
set tabstop=4 " количество пробелов, используемых для отображения табуляции
set softtabstop=4 " количество пробелов, используемых для отображения табуляции при нажатии клавиши 'Tab'
set shiftwidth=4 " количество пробелов, используемых для сдвига при нажатии клавиши 'Tab' или использовании автоматического выравнивания
set autoindent " включает автоматическое выравнивание при вставке новой строки
set fileformat=unix " устанавливает формат файла в Unix
filetype indent on " включает авто определение типа файла и установку соответствующих правил для выравнивания и форматирования кода
set list listchars=tab:\ \ ,trail:·,nbsp:. " включает отображение невидимых символов

" Plugins
call plug#begin('~/.vim/plugged')

" Themes
Plug 'kristijanhusak/vim-hybrid-material' " цветовая схема
Plug 'vim-airline/vim-airline' " информационная панель внизу
Plug 'vim-airline/vim-airline-themes' " темы для инфопанели
Plug 'wfxr/minimap.vim' " миникарта

" Autocomplete
Plug 'mattn/emmet-vim' " автокомплит для HTML/CSS
Plug 'neovim/nvim-lspconfig' " конфигурация клиента LSP для Neovim
Plug 'dense-analysis/ale' " линтер для валидации и редактирования кода

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " поиск
Plug 'junegunn/fzf.vim' " поиск
Plug 'tpope/vim-fugitive' " Git дерево
Plug 'nvim-treesitter/nvim-treesitter' " инфраструктура для синтаксического анализа и подсветки кода
Plug 'BurntSushi/ripgrep' " инструмент для быстрого поиска файлов с использованием регулярных выражений
Plug 'sharkdp/fd' " инструмент для поиска файлов и директорий по имени

call plug#end()

" Search
nnoremap <Esc> :nohlsearch<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<CR>

" Color scheme
syntax on
set background=dark
colorscheme hybrid_reverse
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='minimalist'

" Emmet
let g:user_emmet_leader_key=',' " запуск Emmet по двум запятым

" Netrw
let g:netrw_banner = 0 " скрыть баннер над файлами
let g:netrw_liststyle = 4 " дерево вместо обычного списка
let g:netrw_browsesplit = 3 " вертикальное разделение окна при нажатии Enter на файле

nnoremap <C-S> :w<CR>:so %<CR>
nnoremap <space>e :Ex<CR>

" Minimap
let g:minimap_width = 10
let g:minimap_auto_start = 0

nnoremap <space>m :Minimap<CR>
nnoremap <space>mm :MinimapClose<CR>

" Compiler C language
nnoremap ,, :w<CR> :!gcc % && ./a.out<CR>


