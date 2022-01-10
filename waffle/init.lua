local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

vo = require('config.vim-options')

-- load the user options {
opt.cursorline = vo.cursorline
opt.tabstop =  vo.tabwidth
opt.autoindent = vo.autoindent
vim.wo.number = vo.numbers
 

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

       "VonHeikemen/fine-cmdline.nvim";  -- nice command option
            
        "MunifTanjim/nui.nvim"; -- dependency 

   }
   vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
 end
-- }
