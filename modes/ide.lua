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
			
	use 'alvan/vim-closetag'
			
	use 'folke/lsp-colors.nvim'
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
		size = 20,
		open_mapping = [[<c-t>]],
		shade_filetypes = {},
		shade_terminals = true,
		shading_factor = '1',
		start_in_insert = true,
		persist_size = true,
		direction = 'horizontal'
     }
     -- closetags
    vim.cmd[[
	" filenames like *.xml, *.html, *.xhtml, ...
	" These are the file extensions where this plugin is enabled.
	"	
	let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

	" filenames like *.xml, *.xhtml, ...
	" This will make the list of non-closing tags self-closing in the specified files.
	"
	let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

	" filetypes like xml, html, xhtml, ...
	" These are the file types where this plugin is enabled.
	"
	let g:closetag_filetypes = 'html,xhtml,phtml'

	" filetypes like xml, xhtml, ...
	" This will make the list of non-closing tags self-closing in the specified files.
	"
	let g:closetag_xhtml_filetypes = 'xhtml,jsx'

	" integer value [0|1]
	" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
	"
	let g:closetag_emptyTags_caseSensitive = 1

	" dict
	" Disables auto-close if not in a "valid" region (based on filetype)
	"
	let g:closetag_regions = {
    	\ 'typescript.tsx': 'jsxRegion,tsxRegion',
    	\ 'javascript.jsx': 'jsxRegion',
    	\ 'typescriptreact': 'jsxRegion,tsxRegion',
	    \ 'javascriptreact': 'jsxRegion',
	    \ }

	" Shortcut for closing tags, default is '>'
	"
	let g:closetag_shortcut = '>'

	" Add > at current position without closing the current tag, default is ''
	"
	let g:closetag_close_shortcut = '<leader>>'
	
	
    ]]
    end
function init()
    installPlugins()
    vim.cmd [[packadd packer.nvim]]
    vim.cmd [[ PackerSync ]]
    configurePlugins()
end
init()
