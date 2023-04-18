vim.cmd('let mapleader = " "')
require("jda")

vim.cmd('source ~/.config/nvim/viminit.vim')

-- local local.vim or local.lua in project root
local llfn = "./local.lua"
local lvfn = "./local.vim"
local f = io.open(llfn,"r")
if f~=nil then
  io.close(f)
  dofile(llfn)
else
  f = io.open(lvfn,"r")
  if f~=nil then
    io.close(f)
    vim.cmd.source(lvfn)
  end
end

