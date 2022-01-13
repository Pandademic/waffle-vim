vim.cmd([[PaqSync]]) -- fix broken plugins  by removing old plugins and getting the new ones on waffle start up

local vo = require "config.vim"  -- get config
local modes = require "config.modes"
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
g.mapleader = vo.leaderkey
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
    
     require "paq"{ 
        
        "savq/paq-nvim";            -- Let Paq manage itself
          
        "Konfekt/FastFold"; --speed up vim
    
        "antoinemadec/FixCursorHold.nvim"; -- fix
    
        --{"gelguy/wilder.nvim",fn["wilder#setup({'modes': [':', '/', '?']})"]}; -- completion menu
        
        "projekt0n/github-nvim-theme"
           
        
     }
      -- Example config in Lua
    require("github-theme").setup({
    theme_style = "dark",
    function_style = "italic",
    sidebars = {"qf", "vista_kind", "terminal", "packer"},

    -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    colors = {hint = "orange", error = "#ff0000"},
    })
 
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
   vim.api.nvim_set_keymap('n', '<C-x><C-z>', '<NOP>', {noremap = true})
 end
if modes.ide == true then
      ModeIde()
  end
-- }
