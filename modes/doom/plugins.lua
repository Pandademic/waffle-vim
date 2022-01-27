function installPlugins()
        -- Have packer use a popup window
    require('packer').init({
        display = {
        --open_fn = function()
        --    return require('packer.util').float({ border = 'single' })
        --end
           non_interactive = true
        }
     }
    )
    return require('packer').startup(function()
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
      
        use 'antoinemadec/FixCursorHold.nvim' -- generic dep

        use 'Konfekt/FastFold' --  speed up vim
            
        use 'tpope/vim-fugitive' -- git wrapping
      
        
		use {
    '		goolord/alpha-nvim',
				requires = { 'kyazdani42/nvim-web-devicons' },
				config = function ()
						require'alpha'.setup(require'alpha.themes.startify'.config)
				end
		}


        use 'lewis6991/impatient.nvim'
        
        --packer.startup{{...},
        config = {
                -- Move to lua dir so impatient.nvim can cache it
                compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
                }     

      end)
        
end
