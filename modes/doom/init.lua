vim.cmd [[packadd packer.nvim]]
vim.cmd [[ PackerSync ]]
unction init()
		require 'modes.doom.plugins'

		require 'modes.doom.configp'
end
init()
