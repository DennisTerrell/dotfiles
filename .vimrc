"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                        __   __(_) _ __ ___   _ __  ___
"                        \ \ / /| || '_ ` _ \ | '__|/ __|
"                         \ V / | || | | | | || |  | (__
"                          \_/  |_||_| |_| |_||_|   \___|
"
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Turn on syntax highlighting
syntax on

"Enable line number
set number

"Set comment color cuz default is harder to read
highlight comment ctermfg=cyan

"Convert tabs to spaces
set expandtab

"Tabs equal to two columns
set tabstop=2

"Number of spaces to use for auto indent
set shiftwidth=2

"Number of spaces to use in insert mode for tabs
set softtabstop=2

"Need that ruler
set ruler

"Color column at 80
set cc=80
highlight ColorColumn ctermbg=darkblue guibg=darkblue

"Highlight tabs and extra whitespace
highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s /
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

"Key bindings

inoremap jj <esc>
vnoremap jj <esc>

"Disable swap and backup files
set nobackup
set nowritebackup
set noswapfile

"Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"enable pathogen plugin manager for vim
execute pathogen#infect()

"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"shell syntax checker
let g:syntastic_sh_checkers = ['shell', 'shellcheck']
"c syntax checker
let g:syntastic_c_checkers = ['gcc', 'make']
"python syntax checker
let g:syntastic_python_checkers = ['pyflakes', 'python']
"ruby syntax checker
let g:syntastic_ruby_checkers = ['rubocop']
