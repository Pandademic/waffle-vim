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
        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.header.val = {
          '',
          '',
          '888     888  .d8888b.  888b    888                  888     888 d8b               ',
          '888     888 d88P  Y88b 8888b   888                  888     888 Y8P               ',
          '888     888 Y88b.      88888b  888                  888     888                   ',
          'Y88b   d88P  "Y888b.   888Y88b 888  .d88b.   .d88b. Y88b   d88P 888 88888b.d88b.  ',
          ' Y88b d88P      "Y88b. 888 Y88b888 d8P  Y8b d88""88b Y88b d88P  888 888 "888 "88b ',
          '  Y88o88P         "888 888  Y88888 88888888 888  888  Y88o88P   888 888  888  888 ',
          '   Y888P    Y88b  d88P 888   Y8888 Y8b.     Y88..88P   Y888P    888 888  888  888 ',
          '    Y8P      "Y8888P"  888    Y888  "Y8888   "Y88P"     Y8P     888 888  888  888 ',
        }
        dashboard.section.buttons.val = {
                dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
                dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
                dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
                dashboard.button("m", "  BookMarks", ":Telescope marks <CR>"),
          dashboard.button("e", "  Extensions ", ":e ~/.config/nvim/lua/VisualStudioNeovim/Core/plugins.lua<CR>"),
                dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
                dashboard.button("c", "  Configuration", ":e ~/.config/nvim/lua/VisualStudioNeovim/Core/options.lua<CR>"),
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
        -- vim.cmd([[autocmd User AlphaReady echo 'ready']])
        alpha.setup(dashboard.opts)

end
function init()
    installPlugins()
    vim.cmd [[packadd packer.nvim]]
    vim.cmd [[ PackerSync ]]
    configure()
end
init()
