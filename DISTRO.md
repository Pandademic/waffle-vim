

<!------------------


 __          __             ______   ______   _        ______            __      __  _____   __  __ 
 \ \        / /     /\     |  ____| |  ____| | |      |  ____|           \ \    / / |_   _| |  \/  |
  \ \  /\  / /     /  \    | |__    | |__    | |      | |__               \ \  / /    | |   | \  / |
   \ \/  \/ /     / /\ \   |  __|   |  __|   | |      |  __|               \ \/ /     | |   | |\/| |
    \  /\  /     / ____ \  | |      | |      | |____  | |____               \  /     _| |_  | |  | |
     \/  \/     /_/    \_\ |_|      |_|      |______| |______|               \/     |_____| |_|  |_|
                                                                                                    
                                                                                                    
------------------->
# WAFFLE VIM
The vim distro(bution) that's better than waffles and syrup!

May not be for begginers

# install
------
Add :
```lua

vim.opt.runtimepath="$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after"

require('waffle')
```
to your init.lua(instead of init.vim)
now clone this repo to the lua dir off .vim (from ~)with:
```sh
git clone https://github.com/Pandademic/waffle-vim.git .vim/lua 
```
and enjoy!
