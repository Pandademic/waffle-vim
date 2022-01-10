# waffle-vim
A vim distro that's better than waffles and syrup!

Trying to follow KISS principles.

May not be for begginers

# install
------
### MAC / LINUX
----
1. clone this repo to your neovim config location (Usually ~/.config/nvim/)
2. install [paq vim package manager](https://github.com/savq/paq-nvim)
3. run ` mv $HOME/.config/nvim $HOME/.config/oldnvim` to move your old config to oldnvim
4. run `git clone https://github.com/Pandademic/waffle-vim ~/.config/nvim` to clone the repo
---
#### Windows
-----
1. setup a symlink between Appdata/local and .config/nvim . You can use roughly follow [this guide](https://www.maketecheasier.com/create-symbolic-links-windows10/#:~:text=Once%20LSE%20is%20installed%2C%20right,As%20%2D%3E%20Symbolic%20Link.%E2%80%9D)

2. Once you've got that to work copy the contents of this repo to your .config/nvim directory - **DO NOT KEEP IT IN THE WAFFLE-VIM DIRECTORY**

3. install [paq vim package manager](https://github.com/savq/paq-nvim)

---
<!--  
# Getting started
----
edit `init.lua` with the following addition:
On the first uncommented line:
``` lua
local settings = require '^wafflesettings.settings'
```
See the ^ sign in the above ? At that mark put the full path to your nvim config
like :
``` lua
local settings = require '~/.config/nvim/wafflesettings.settings'
```
-->
