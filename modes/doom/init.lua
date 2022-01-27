function init()
		vim.cmd [[packadd packer.nvim]]
		require 'modes.doom.plugins'
		vim.cmd [[ PackerSync ]]
		require 'modes.doom.configp'
end
init()
