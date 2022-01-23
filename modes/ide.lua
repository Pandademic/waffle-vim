function installPlugins()
    -- Have packer use a popup window
    packer.init({
        display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
        }
     }
    )
    return require('packer').startup(function()
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
      
        use 'antoinemadec/FixCursorHold.nvim' -- generic dependencie

        use 'Konfekt/FastFold' --  speed up vim

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
          }
      end)
        
end
function configurePlugins()
    require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'wombat',
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {},
          always_divide_middle = true,
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        extensions = {}
      }
    end
function init()
    installPlugins()
    vim.cmd [[packadd packer.nvim]]
    vim.cmd [[ PackerSync ]]
    configurePlugins()
end
init()
