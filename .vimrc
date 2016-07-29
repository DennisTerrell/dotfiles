"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                _                       
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

"Highlight tabs and extra whitespace
highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s /
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/



"Disable swap and backup files
set nobackup
set nowritebackup
set noswapfile


"enable pathogen plugin manager for vim
execute pathogen#infect()

"default settings suggested by screwloose, author of syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
