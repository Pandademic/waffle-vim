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
      
        use 'ervandew/supertab' -- tab complete
      
        use {"akinsho/toggleterm.nvim"}
                    
        use 'lewis6991/impatient.nvim'
        
        packer.startup{{...},
        config = {
                -- Move to lua dir so impatient.nvim can cache it
                compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
                }     
        }

      end)
        
end
function init()
    installPlugins()
    vim.cmd [[packadd packer.nvim]]
    vim.cmd [[ PackerSync ]]
    require('toggleterm').setup {
      size = 20p
      pen_mapping = [[<c-t>]],
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = '1',
      start_in_insert = true,
      persist_size = true,
      direction = 'horizontal'
    }
end
init()
