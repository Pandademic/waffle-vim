-- TOPPINGS (your config) {
-- options for vim 
vo = {
  tabwidth=4,
  autoindent=true,
  colorscheme="default",
  cursorline=false,
  numbers=false,
  smartindent=true,
  swapfile=false,
  backup=false,
  smartcase=true,
  bells=false, -- error bells
  syntax='on', -- on or off
  leaderKey=';',
  
}
-- modes
modes = {
   default = true,
   ide = false,
   tranquil = nil,
}

-- }

-- HERE BEGINS ACTUAL WAFFLES
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options


-- load the user vim options {
opt.cursorline = vo.cursorline
opt.tabstop =  vo.tabwidth
vim.bo.autoindent = vo.autoindent
vim.wo.number = vo.numbers
vim.bo.smartindent = vo.smartindent
vim.bo.swapfile = vo.swapfile
opt.backup = vo.backup
opt.syntax = vo.syntax
opt.errorbells = vo.bells
opt.smartcase = vo.smartcase
g.mapleader=vo.leaderkey
--- }

-- basic vim stuff {
opt.encoding='utf-8'
opt.mouse='a'
opt.notimeout=true
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
if modes.default == true then
   require "paq" {
       "savq/paq-nvim";            -- Let Paq manage itself

       "VonHeikemen/fine-cmdline.nvim";  -- nice command option 
            
        "MunifTanjim/nui.nvim"; -- dependency 
    
        "Konfekt/FastFold"; --speed up vim
    
        "antoinemadec/FixCursorHold.nvim"; -- fix
    

   }
   vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
 end
if modes.ide == true then
      ModeIde()
  end
-- }
cmd([[
  autocmd VimEnter PaqSync
]]) -- fix broken plugins  by removing old plugins and getting the new ones on waffle start up
