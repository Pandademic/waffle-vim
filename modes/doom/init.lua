vim.cmd [[packadd packer.nvim]]
vim.cmd [[ PackerSync ]]
function init()
		require 'modes.doom.plugins'

		require 'modes.doom.configp'
end
init()
