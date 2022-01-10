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
  **IN POWERSHELL from your home**
  YOU MUST HAVE INSTALLED "NEOVIM-nightly" FROM SCOOP (version bucket) 
1. setup a symlink between ~/AppData/Local and ~/.config/nvim . You can use roughly follow [this guide](https://www.maketecheasier.com/create-symbolic-links-windows10/#:~:text=Once%20LSE%20is%20installed%2C%20right,As%20%2D%3E%20Symbolic%20Link.%E2%80%9D)

2. install [paq vim package manager](https://github.com/savq/paq-nvim)

3. move your config to oldnvim in .config <!-- not neccaacary but makes migration easier --> 

4. run `git clone https://github.com/Pandademic/waffle-vim ~/.config/nvim` to clone the repo to uour nvim config location

5. cd to C:\Users\[YOU]\scoop\apps\neovim-nightly\current where [YOU] is your username

6. git clone  this this repo to  C:\Users\[YOU]\scoop\apps\neovim-nightly\current\lua where [YOU] is your username

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
