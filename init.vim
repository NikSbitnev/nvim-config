" Base
set encoding=utf-8 " устанавливает кодировку в UTF-8
set number " отображает номера строк
set relativenumber " отображает относительные номера строк
set noswapfile " отключает создание файла обмена
set scrolloff=10 " указывает количество строк, оставляемых сверху и снизу при прокрутке

" Tabs
set expandtab " заменяет символы табуляции пробелами
set tabstop=4 " количество пробелов, используемых для отображения табуляции
set softtabstop=4 " количество пробелов, используемых для отображения табуляции при нажатии клавиши 'Tab'
set shiftwidth=4 " количество пробелов, используемых для сдвига при нажатии клавиши 'Tab' или использовании автоматического выравнивания
set autoindent " включает автоматическое выравнивание при вставке новой строки
set fileformat=unix " устанавливает формат файла в Unix
filetype indent on " включает автоопределение типа файла и установку соответствующих правил для выравнивания и форматирования кода
set list listchars=tab:\ \ ,trail:·,nbsp:. " включает отображение невидимых символов

" Plugins
call plug#begin()
Plug 'flazz/vim-colorschemes' " цветовые схемы
Plug 'xolox/vim-colorscheme-switcher' " переключатель цветовых схем по :F8/Shift-F8
Plug 'xolox/vim-misc' " инструментом для работы с текстом, обязателен для xolox/vim-colorscheme-switcher

Plug 'neovim/nvim-lspconfig' " конфигурация клиента LSP для Neovim
Plug 'dense-analysis/ale' " линтер для валидации и редактирования кода

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' } " плагин для поиска и навигации по файлам
Plug 'nvim-treesitter/nvim-treesitter' " инфраструктура для синтаксического анализа и подсветки кода
Plug 'BurntSushi/ripgrep' " инструмент для быстрого поиска файлов с использованием регулярных выражений
Plug 'sharkdp/fd' " инструмент для поиска файлов и директорий по имени
call plug#end()

" Color scheme
colorscheme monokai-phoenix " Выбранная цветовая схема

" Color cheme switch
nnoremap <F7> <cmd>PrevColorScheme<cr>
nnoremap <F8> <cmd>RandomColorScheme<cr>
nnoremap <F9> <cmd>NextColorScheme<cr>

" Netrw explorer
let g:netrwbanner = 0 " скрыть баннер над файлами
let g:netrwliststyle = 3 " дерево вместо обычного списка
let g:netrwbrowsesplit = 3 " вертикальное разделение окна при нажатии Enter на файле


