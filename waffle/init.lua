local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

waffle = {
    -- these are user defined settings
    settings = {
        tabwidth=4,
        autoindent=true,
        colorscheme="default",
        cursorline=false,
        numbers=true
    }
    -- say true to the mode you want
    modes = {
        default = true,
        tranquil = false,
        ide = false,
    }
}
    -- end user defined settings and begin the actual WAFFLE
    opt.cursorline = waffle.settings.cursorline
    opt.tabstop =  waffle.settings.tabwidth
    opt.autoindent = waffle.settings.autoindent
    vim.wo.number = waffle.settings.numbers
    if modes.default == true {
       require "paq" {
            "savq/paq-nvim";                  -- Let Paq manage itself

            "VonHeikemen/fine-cmdline.nvim";
            
            "MunifTanjim/nui.nvim";


     }
