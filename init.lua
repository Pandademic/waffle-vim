-- 
--
--
-- __          __             ______   ______   _        ______    __      __  _____   __  __ 
-- \ \        / /     /\     |  ____| |  ____| | |      |  ____|   \ \    / / |_   _| |  \/  |
--  \ \  /\  / /     /  \    | |__    | |__    | |      | |__       \ \  / /    | |   | \  / |
--   \ \/  \/ /     / /\ \   |  __|   |  __|   | |      |  __|       \ \/ /     | |   | |\/| |
--   \  /\  /     / ____ \  | |      | |      | |____  | |____       \  /     _| |_  | |  | |
--     \/  \/     /_/    \_\ |_|      |_|      |______| |______|       \/     |_____| |_|  |_|
--                                                                                            
--                                                                                            
-- (c) ATHARV GUPTE 2022 - MIT LICENCED
--
-- 

vim.opt.runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
local settings = require 'wafflesettings.setting'
if settings.StartMode == "default" then
 require('modes.default.plugins')
 require('modes.default.options')
end
