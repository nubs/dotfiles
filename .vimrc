" vim: set ft=vim sw=2 ts=2 sts=2 et :
set nocompatible        " Use Vim defaults (much better!)
set bs=indent,eol,start " allow backspacing over everything in insert mode
set ai                  " always set autoindenting on
set viminfo='20,\"500   " read/write a .viminfo file, don't store more
                        " than 500 lines of registers
set history=100         " keep 100 lines of command line history
set ruler               " show the cursor position all the time
set modeline            " enable modelines in files
set ignorecase          " ignore case when searching
set smartcase           " except for when capital letters are in search string
set incsearch           " show the best match while search is typed
set scrolloff=5         " leave some context around the cursor
set relativenumber      " line numbers

if exists('+colorcolumn')
  set colorcolumn=80 " show column # 80 to help with detecting long lines.
endif

if has('mouse')
 set mouse=a " enable mouse
endif

set diffopt+=vertical " Use vertical splits for diffs

" Use filetype detection
filetype plugin indent on

call pathogen#infect()

" Remove ALL autocommands for the current group
:autocmd!

if &t_Co > 16
  set t_Co=16
endif

set term=xterm

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  colorscheme evening
endif

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif

"""""""""""""""""""""""""""
" Filetype specific changes
"""""""""""""""""""""""""""

" Text
" Limit the width of text to 78 characters
autocmd FileType text setlocal textwidth=78

" PHP
let php_sql_query=1
let php_htmlInStrings=1
let g:php_refactor_command='refactor'
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab textwidth=119 formatoptions=qrotc

" Python
autocmd FileType python setlocal tabstop=1 shiftwidth=1 softtabstop=1 expandtab

" Ruby
autocmd BufNewFile,BufRead Vagrantfile setlocal filetype=ruby
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" CoffeeScript
autocmd FileType coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Javascript
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" HTML
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType htmldjango setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType jade setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Mustache/Handlebars
autocmd FileType mustache setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html.handlebars setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Markdown
autocmd FileType markdown setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab textwidth=78
autocmd FileType markdown setlocal spell!
let g:markdown_fenced_languages = ['js=javascript', 'json=javascript', 'sh', 'bash=sh', 'php', 'apache', 'nginx', 'ruby', 'sql']

" Git Commit Messages
autocmd FileType gitcommit setlocal spell!

" Twig
autocmd FileType twig setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" CSS
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Sass
autocmd FileType scss setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Less
autocmd FileType less setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Opa
autocmd FileType opa setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Stylus
autocmd FileType stylus setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Vim
autocmd FileType vim setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" WDDX
autocmd BufNewFile,BufRead *.wddx setf xml

" Ant
autocmd FileType ant setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" XML
autocmd FileType xml setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Mutt Mail
autocmd BufRead /tmp/mutt-* setlocal textwidth=78 formatoptions=croql

" JSON
autocmd BufNewFile,BufRead *.json,.eslintrc setf javascript
autocmd FileType json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" YAML
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" XML
autocmd FileType sh setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Apache
autocmd BufNewFile,BufRead */*vhosts*.conf set filetype=apache
autocmd FileType apache setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" PKGBUILD
autocmd BufNewFile,BufRead PKGBUILD set filetype=sh

" SQL
autocmd FileType sql setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Java
autocmd FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Shell
autocmd FileType zsh setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
