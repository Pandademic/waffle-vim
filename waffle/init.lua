local modes = require "config.modes"
-- mode detction {
if modes.default == true then
    require 'modes.default'
end
if modes.ide == true then
      require 'modes.ide'
end
if modes.tranquil == true then
      require 'modes.tranquil'
end
if modes.doom == true then
		require 'modes.doom'
end
-- }
require 'waffle.core.loadVimOptions'

require 'waffle.core.vimStuff'

require 'waffle.core.bindKeys'
