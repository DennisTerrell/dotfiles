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

"turn on syntax highlighting 
syntax on

"enable line number
set number

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