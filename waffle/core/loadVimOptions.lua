local vo = require "config.vim" 
-- load the user vim options {
vim.opt.cursorline = vo.cursorline
vim.opt.tabstop =  vo.tabwidth
vim.bo.autoindent = vo.autoindent
vim.wo.number = vo.numbers
vim.bo.smartindent = vo.smartindent
vim.bo.swapfile = vo.swapfile
vim.opt.backup = vo.backup
vim.opt.syntax = vo.syntax
vim.opt.errorbells = vo.bells
vim.opt.smartcase = vo.smartcase
vim.g.mapleader = vo.leaderkey
--- }
