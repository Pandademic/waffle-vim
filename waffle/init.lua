-- TOPPINGS (your config) {
-- options for vim 
vo = {
  tabwidth=4,
  autoindent=true,
  colorscheme="default",
  cursorline=false,
  numbers=false,
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
opt.autoindent = vo.autoindent
vim.wo.number = vo.numbers
 

--- }

-- basic waffle stuff {
cmd([[
set notimeout
set encoding=utf-8
set mouse=a
]])
--}

-- keymapping {
cmd([[
imap <c-l> <esc> ddi
imap <c-u> <esc> \Ui
]])
-- }
cmd([[
  autocmd VimEnter PaqSync
]]) -- fix broken plugins  by removing old plugins and getting the new ones on waffle start up
function ModeIde()
     require "paq" {
      "savq/paq-nvim"; -- let paq manage itself
       
          
        "Konfekt/FastFold"; --speed up vim
    
        "antoinemadec/FixCursorHold.nvim"; -- fix
    
        "gelguy/wilder.nvim" -- completion menu
       
    
    }
    cmd([[
    " default keys
    call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Down>',
      \ 'reject_key': '<Up>',
      \ })
    ]])
 
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
