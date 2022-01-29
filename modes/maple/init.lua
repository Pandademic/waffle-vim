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
      
        use 'antoinemadec/FixCursorHold.nvim' -- generic dependencie

        use 'Konfekt/FastFold' --  speed up vim
            
        use 'tpope/vim-fugitive' -- git wrapping
        
         use 'lewis6991/impatient.nvim'
         
         use 'mhinz/vim-startify'
         
         use 'nvim-lua/plenary.nvim'
                        
          use 'kyazdani42/nvim-web-devicons'
                        
          use 'ervandew/supertab'
          
          use 'nvim-telescope/telescope.nvim'
                        
          use 'lambdalisue/fern.vim/'
          config = {
        -- Move to lua dir so impatient.nvim can cache it
        compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
  }
      end)
        
end
function configure()
     --keymapping
     vim.cmd[[
        nnoremap <leader>-f :Fern . -drawer<CR>    
    ]]
end
function init()
    installPlugins()
    vim.cmd [[packadd packer.nvim]]
    vim.cmd [[ PackerSync ]]
    configure()
end
init()
