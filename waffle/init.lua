local modes = require "config.modes"
-- mode detction {
if modes.default == true then
    require 'modes.default'
end
if modes.ide == true then
      require 'modes.ide'
end
if modes.tranquil == true then
      require 'modes.tranquil'
end
-- }
local vo = require "config.vim"  -- get config
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

-- basic vim stuff {
opt.encoding='utf-8'
opt.mouse='a'
vim.cmd[[
set wildignore+=*/node_modules/*
]]
--}

-- keymapping {
cmd([[
imap <dl> <esc> ddi
]])
-- }
