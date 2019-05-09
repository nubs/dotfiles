set nocompatible        " Use Vim defaults (much better!)
set bs=indent,eol,start " allow backspacing over everything in insert mode
set ai                  " always set autoindenting on
set viminfo='20,\"500   " read/write a .viminfo file, don't store more
                        " than 500 lines of registers
set history=500         " keep 500 lines of command line history
set ruler               " show the cursor position all the time
set modeline            " enable modelines in files
set ignorecase          " ignore case when searching
set smartcase           " except for when capital letters are in search string
set incsearch           " show the best match while search is typed
set scrolloff=5         " leave some context around the cursor
set relativenumber      " line numbers
set formatoptions+=j    " better join lines for comments
set background=dark

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

" EasyMotion mappings
let g:EasyMotion_smartcase = 1
map <Leader> <Plug>(easymotion-prefix)
map <Leader>/ <Plug>(easymotion-sn)
omap <Leader>/ <Plug>(easymotion-tn)

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

" Override some filetypes, especially for files that vim doesn't automatically
" detect a type for.
autocmd BufNewFile,BufRead */*vhosts*.conf setf apache
autocmd BufNewFile,BufRead *.json setf javascript
autocmd BufNewFile,BufRead *.jsx setf jsx
autocmd BufNewFile,BufRead TODO setf markdown
autocmd BufNewFile,BufRead Vagrantfile setf ruby
autocmd BufNewFile,BufRead PKGBUILD setf sh
autocmd BufNewFile,BufRead *.wddx setf xml

" PHP
let php_sql_query=1
let php_htmlInStrings=1
let g:php_refactor_command='refactor'
autocmd FileType php setlocal textwidth=119 formatoptions=qrotcj

" Markdown
let g:markdown_fenced_languages = ['js=javascript', 'jsx=jsx', 'json=javascript', 'sh', 'bash=sh', 'php', 'apache', 'graphql', 'nginx', 'ruby', 'sql', 'ts=typescript', 'yaml']

" For many languages, use 2 space indentation
autocmd FileType c,coffee,cpp,css,gitcommit,graphql,html,htmldjango,html.handlebars,jade,javascript,json,less,mustache,opa,python,ruby,scss,sh,sql,stylus,terraform,twig,typescript,vim,yaml,zsh setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" For a couple languages, and xml-ish things use 4 space indentation
autocmd FileType ant,apache,java,markdown,php,xml setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Most programming stuff shouldn't have spellcheck, but for textual formats it
" is nice to have spell check automatically enabled.
autocmd FileType gitcommit,markdown,text setlocal spell!

autocmd FileType markdown,text,yaml setlocal textwidth=78 formatoptions=qrotcj
