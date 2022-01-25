function installPlugins()
    -- Have packer use a popup window
    require('packer').init({
        display = {
           non_interactive = true
        }
     }
    )
    return require('packer').startup(function()
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
     
	use 'lewis6991/impatient.nvim'
			
        use 'antoinemadec/FixCursorHold.nvim' -- generic dependencie

        use 'Konfekt/FastFold' --  speed up vim

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
          }
	use {"akinsho/toggleterm.nvim"} -- terminal
			
	use {
  		"folke/todo-comments.nvim",
  		requires = "nvim-lua/plenary.nvim",
  		config = function()
    		require("todo-comments").setup {
    		}
  		end
	}
	  config = {
    	-- Move to lua dir so impatient.nvim can cache it
    	compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
  }		
      end)
        
end
function init()
    vim.cmd [[ PackerSync ]]
    vim.cmd [[packadd packer.nvim]]	
    installPlugins()
    require('modes.ide.plugin-conf').configure()	
end
init()
