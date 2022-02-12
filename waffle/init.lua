local mode = require "config.modes"
-- common stuff
require 'waffle.core.loadVimOptions'

require 'waffle.core.vimStuff'

require 'waffle.core.bindKeys'

-- mode detction {

if mode.plusplus then
      require 'modes.plusplus'
end
if mode.typewriter then
      require 'modes.typewriter'
end
if mode.doom then
	require 'modes.doom'
end
