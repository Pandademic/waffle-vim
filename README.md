# waffle-vim
A vim distro that's better than waffles and syrup!

Trying to follow KISS principles.

May not be for begginers

# install
------
install [paq vim package manager](https://github.com/savq/paq-nvim)
then git clone this repo to the place where your init.vim / init.lua is.
then read the Getting started section below

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
