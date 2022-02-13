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
      
        use 'junegunn/goyo.vim'
      
        use 'junegunn/limelight.vim'
                    
        use 'lewis6991/impatient.nvim'
                        
                        
         use 'google/vim-colorscheme-primary'
        
        config = {
                -- Move to lua dir so impatient.nvim can cache it
                compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
             }     

      end)
        
end
installPlugins()
vim.cmd [[packadd packer.nvim]]
vim.cmd [[ PackerSync ]]
vim.cmd[[autocmd  BufWinEnter  * :Goyo]]
vim.cmd[[
autocmd! User GoyoLeave x
]]
vim.cmd[[
syntax enable
set t_Co=256
set background=light
colorscheme primary
]]
