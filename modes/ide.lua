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

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
          }
        use {
	        "SmiteshP/nvim-gps",
	        requires = "nvim-treesitter/nvim-treesitter"
        }
	use {"akinsho/toggleterm.nvim"}
      end)
        
end
function configurePlugins()
    require("nvim-gps").setup()
    local gps 	= require('nvim-gps')
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
          lualine_x = {{ gps.get_location, cond = gps.is_available },},
          --lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        extensions = {}
      }
      require('toggleterm').setup {
  	size = 13,
  	open_mapping = [[<c-\>]],
  	shade_filetypes = {},
  	shade_terminals = true,
  	shading_factor = '1',
  	start_in_insert = true,
  	persist_size = true,
  	direction = 'horizontal'
	}
    end
function init()
    installPlugins()
    vim.cmd [[packadd packer.nvim]]
    vim.cmd [[ PackerSync ]]
    configurePlugins()
end
init()
