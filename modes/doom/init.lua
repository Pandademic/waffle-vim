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
                dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
                dashboard.button("m", "  Bookmarks", ":Telescope marks <CR>"),
                dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
                dashboard.button("q", "  Quit Neovim", ":q!<CR>"),
        }


        dashboard.section.footer.opts.hl = "Type"
        dashboard.section.header.opts.hl = "Include"
        dashboard.section.buttons.opts.hl = "Keyword"

        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)

end
function setupVim()
     vim.cmd[[
        set nocursorline
        set nocursorcolumn
        set scrolljump=5
        set lazyredraw
        set synmaxcol=180
        ]]
 end
function init()
    installPlugins()
    vim.cmd [[packadd packer.nvim]]
    vim.cmd [[ PackerSync ]]
    setupVim()
    configure()
end
init()
