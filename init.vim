"
"
" __          __             ______   ______   _        ______    __      __  _____   __  __ 
" \ \        / /     /\     |  ____| |  ____| | |      |  ____|   \ \    / / |_   _| |  \/  |
"  \ \  /\  / /     /  \    | |__    | |__    | |      | |__       \ \  / /    | |   | \  / |
"   \ \/  \/ /     / /\ \   |  __|   |  __|   | |      |  __|       \ \/ /     | |   | |\/| |
"   \  /\  /     / ____ \  | |      | |      | |____  | |____       \  /     _| |_  | |  | |
"     \/  \/     /_/    \_\ |_|      |_|      |______| |______|       \/     |_____| |_|  |_|
"                                                                                            
"                                                                                            
" (c) ATHARV GUPTE 2022 - MIT LICENCED

set nocompatible
" Environment {

    " Identify platform {
        silent function! OSX()
            return has('macunix')
        endfunction
        silent function! LINUX()
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS()
            return  (has('win32') || has('win64'))
        endfunction
    " }

    " Basics {
       " Must be first line
        if !WINDOWS()
            set shell=/bin/sh
        endif
    " }

    " Windows Compatible {
        " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
        " across (heterogeneous) systems easier.
        if WINDOWS()
          set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
        endif
    " }
    
    " Arrow Key Fix {
        " https://github.com/spf13/spf13-vim/issues/780
        if &term[:4] == "xterm" || &term[:5] == 'screen' || &term[:3] == 'rxvt'
            inoremap <silent> <C-[>OC <RIGHT>
        endif
    " }

" }
lua require('waffle-settings.settings')

