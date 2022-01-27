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
        use {
             'nvim-telescope/telescope.nvim',
                requires = { {'nvim-lua/plenary.nvim'} }
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
                dashboard.section.header.val = {
                "",
                "",
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
                 "",
                }

        dashboard.section.buttons.val = {
                dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
                dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
                dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
                dashboard.button("m", "  BookMarks", ":Telescope marks <CR>"),
                dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
                dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
        }


        dashboard.section.footer.val = {
          "",
          "--   DOOM WAFFLE",
          "",
        }

        dashboard.section.footer.opts.hl = "Type"
        dashboard.section.header.opts.hl = "Include"
        dashboard.section.buttons.opts.hl = "Keyword"

        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)

end
function init()
    installPlugins()
    vim.cmd [[packadd packer.nvim]]
    vim.cmd [[ PackerSync ]]
    configure()
end
init()
