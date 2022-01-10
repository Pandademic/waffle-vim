-- [[


 __          __             ______   ______   _        ______    __      __  _____   __  __ 
 \ \        / /     /\     |  ____| |  ____| | |      |  ____|   \ \    / / |_   _| |  \/  |
  \ \  /\  / /     /  \    | |__    | |__    | |      | |__       \ \  / /    | |   | \  / |
   \ \/  \/ /     / /\ \   |  __|   |  __|   | |      |  __|       \ \/ /     | |   | |\/| |
   \  /\  /     / ____ \  | |      | |      | |____  | |____       \  /     _| |_  | |  | |
     \/  \/     /_/    \_\ |_|      |_|      |______| |______|       \/     |_____| |_|  |_|
                                                                                            
                                                                                            
 (c) ATHARV GUPTE 2022 - MIT LICENCED

-- ]]


local settings = require 'wafflesettings.settings'
if settings.StartMode == "default" then
 require('modes.default.plugins')
 require('modes.default.options')
end
