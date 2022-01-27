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
                   
         use {
                'goolord/alpha-nvim',
                requires = { 'kyazdani42/nvim-web-devicons' },
                config = function ()
                      require'alpha'.setup(require'alpha.themes.dashboard'.config)
                end
        }
                    
          config = {
        -- Move to lua dir so impatient.nvim can cache it
        compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
  }
      end)
        
end
function configure()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header
        dashboard.section.header.val = {
                        
        "▓█████▄  ▒█████   ▒█████   ███▄ ▄███▓    █     █░ ▄▄▄        █████▒ █████▒██▓    ▓█████", 
        "▒██▀ ██▌▒██▒  ██▒▒██▒  ██▒▓██▒▀█▀ ██▒   ▓█░ █ ░█░▒████▄    ▓██   ▒▓██   ▒▓██▒    ▓█   ▀", 
        "░██   █▌▒██░  ██▒▒██░  ██▒▓██    ▓██░   ▒█░ █ ░█ ▒██  ▀█▄  ▒████ ░▒████ ░▒██░    ▒███  ",
        "░▓█▄   ▌▒██   ██░▒██   ██░▒██    ▒██    ░█░ █ ░█ ░██▄▄▄▄██ ░▓█▒  ░░▓█▒  ░▒██░    ▒▓█  ▄ ",
        "░▒████▓ ░ ████▓▒░░ ████▓▒░▒██▒   ░██▒   ░░██▒██▓  ▓█   ▓██▒░▒█░   ░▒█░   ░██████▒░▒████▒",
         "▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░   ░  ░   ░ ▓░▒ ▒   ▒▒   ▓▒█░ ▒ ░    ▒ ░   ░ ▒░▓  ░░░ ▒░ ░",
         "░ ▒  ▒   ░ ▒ ▒░   ░ ▒ ▒░ ░  ░      ░     ▒ ░ ░    ▒   ▒▒ ░ ░      ░     ░ ░ ▒  ░ ░ ░  ░",
         "░ ░  ░ ░ ░ ░ ▒  ░ ░ ░ ▒  ░      ░        ░   ░    ░   ▒    ░ ░    ░ ░     ░ ░      ░   ",
         "  ░        ░ ░      ░ ░         ░          ░          ░  ░                  ░  ░   ░  ░",
         "░                                                                                      ",
         "                                                                                       ",
        }

        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
            dashboard.button( "f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
            dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
            dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
            dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
        }

        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[
            autocmd FileType alpha setlocal nofoldenable
        ]])
end
function init()
    installPlugins()
    vim.cmd [[packadd packer.nvim]]
    vim.cmd [[ PackerSync ]]
    configure()
end
init()
