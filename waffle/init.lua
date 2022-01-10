local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

local syrup = require('syrup')

-- load the user options {
opt.cursorline = syrup.settings.cursorline
opt.tabstop =  syrup.settings.tabwidth
opt.autoindent = syrup.settings.autoindent
vim.wo.number = syrup.settings.numbers
 

--- }

-- basic waffle stuff {
cmd([[
set notimeout
set encoding=utf-8
]])
--}

-- keymapping {
cmd([[
imap <c-l> <esc> ddi
imap <c-u> <esc> \Ui
]])
-- }


-- mode detction {
if modes.default == true then
   require "paq" {
       "savq/paq-nvim";                  -- Let Paq manage itself

       "VonHeikemen/fine-cmdline.nvim";
            
        "MunifTanjim/nui.nvim";

   }
   vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
 end
-- }
