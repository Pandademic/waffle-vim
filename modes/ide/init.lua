function installPlugins()
    -- Have packer use a popup window
    require('packer').init({
        display = {
           non_interactive = true
        }
     }
    )
    return require('packer').startup(function()
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
     
	    use 'lewis6991/impatient.nvim' -- speed up your vim startup , really badly needed for ide mode
			
        use 'antoinemadec/FixCursorHold.nvim' -- TODO: check if this is really needed

        use 'Konfekt/FastFold' --  speed up your time inside of vim

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
          }
	use {"akinsho/toggleterm.nvim"} -- terminal
			
	use {
  		"folke/todo-comments.nvim",
  		requires = "nvim-lua/plenary.nvim",
  		config = function()
    		require("todo-comments").setup {
    		}
  		end
	}
	-- using packer.nvim
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'} --add  tabs
	  config = {
    	-- Move to lua dir so impatient.nvim can cache it
    	compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
  }		
      end)
        
end
function configure()
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
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        extensions = {}
      }
      require('toggleterm').setup {
		size = 20,
		open_mapping = [[<c-t>]],
		shade_filetypes = {},
		shade_terminals = true,
		shading_factor = '1',
		start_in_insert = true,
		persist_size = true,
		direction = 'horizontal'
     }
     vim.opt.termguicolors = true
     require("bufferline").setup{}
    end
function init()
    vim.cmd [[packadd packer.nvim]]
    installPlugins()
    vim.cmd[[PackerSync]]	
    configure()	
end
init()
