local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

vo = require('config.vim-options')

-- load the user options {
opt.cursorline = vo.vo.cursorline
opt.tabstop =  vo.vo.tabwidth
opt.autoindent = vo.vo.autoindent
vim.wo.number = vo.vo.numbers
 

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

modes = {
   default = true,
   ide = nil,
   tranquil = nil,
}
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
