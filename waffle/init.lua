local mode = require "config.modes"
-- common stuff
require 'waffle.core.loadVimOptions'

require 'waffle.core.vimStuff'

require 'waffle.core.bindKeys'

-- mode detction {
if mode.minimal then
    require 'modes.minimal'
end
if mode.ide then
      require 'modes.ide'
end
if mode.tranquil then
      require 'modes.tranquil'
end
if mode.doom then
		require 'modes.doom'
end
