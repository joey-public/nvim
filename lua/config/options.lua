local opt = vim.opt

-- Tab / Imdentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Serch 
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

----Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = '60'
opt.colorcolumn = '80'
opt.signcolumn = "yes"
opt.cmdheight = 0
opt.scrolloff = 5 
opt.cursorline = true
opt.cursorcolumn = true
--opt.completeopt = "menuone, noinsert, noselect"

--Behavior
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
--opt.iskeyword:append("-")
opt.clipboard:append("unnamedplus")
opt.modifiable = true
