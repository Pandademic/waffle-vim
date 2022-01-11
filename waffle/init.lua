require('config') -- get config
-- HERE BEGINS ACTUAL WAFFLES
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options


-- load the user vim options {
opt.cursorline = config.vo.cursorline
opt.tabstop =  config.vo.tabwidth
vim.bo.autoindent = config.vo.autoindent
vim.wo.number = config.vo.numbers
vim.bo.smartindent = config.vo.smartindent
vim.bo.swapfile = config.vo.swapfile
opt.backup = config.vo.backup
opt.syntax = config.vo.syntax
opt.errorbells = config.vo.bells
opt.smartcase = config.vo.smartcase
g.mapleader=config.vo.leaderkey
--- }

-- basic vim stuff {
opt.encoding='utf-8'
opt.mouse='a'
--}

-- keymapping {
cmd([[
imap <c-l> <esc> ddi
imap <c-u> <esc> \Ui
]])
-- }
function ModeIde()
     require "paq" {
      "savq/paq-nvim"; -- let paq manage itself
       
          
        "Konfekt/FastFold"; --speed up vim
    
        "antoinemadec/FixCursorHold.nvim"; -- fix
    
        "gelguy/wilder.nvim" -- completion menu
           
        
    }
    
 
end
-- mode detction {
if config.modes.default == true then
   require "paq" {
       "savq/paq-nvim";            -- Let Paq manage itself

       "VonHeikemen/fine-cmdline.nvim";  -- nice command option 
            
        "MunifTanjim/nui.nvim"; -- dependency 
    
        "Konfekt/FastFold"; --speed up vim
    
        "antoinemadec/FixCursorHold.nvim"; -- fix
    

   }
   vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
 end
if config.modes.ide == true then
      ModeIde()
  end
-- }
cmd([[
  autocmd VimEnter PaqSync
]]) -- fix broken plugins  by removing old plugins and getting the new ones on waffle start up
