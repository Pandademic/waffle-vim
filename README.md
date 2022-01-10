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
5. make a init.lua which says `require('waffle')`
---
#### Windows
-----
  **IN POWERSHELL from your home**
  YOU MUST HAVE INSTALLED "NEOVIM-nightly" FROM SCOOP (version bucket) 
1. setup a symlink between ~/AppData/Local and ~/.config/nvim . You can use roughly follow [this guide](https://www.maketecheasier.com/create-symbolic-links-windows10/#:~:text=Once%20LSE%20is%20installed%2C%20right,As%20%2D%3E%20Symbolic%20Link.%E2%80%9D)

2. install [paq vim package manager](https://github.com/savq/paq-nvim)

3. move your config to oldnvim in .config <!-- not neccaacary but makes migration easier --> 

4. make a init.lua where it says `require('waffle')`

5. cd to C:\Users\[YOU]\scoop\apps\neovim-nightly\current where [YOU] is your username

6. git clone  this this repo to  C:\Users\[YOU]\scoop\apps\neovim-nightly\current\bin where [YOU] is your username as lua , like so (Example user : bobbyjones):
```sh

git clone https://github.com/Pandademic/waffle-vim.git C:\Users\bobbyjones\scoop\apps\neovim-nightly\current\bin\lua

```
---
# GETTING STARTED
----
see the waffle/init.lua ?
There's asectiontheir which is your settings

