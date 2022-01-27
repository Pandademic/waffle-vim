function init()
		require 'modes.doom.plugins'
		vim.cmd [[packadd packer.nvim]]
		vim.cmd [[ PackerSync ]]
		require 'modes.doom.configp'
end
init()
