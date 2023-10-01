-- security
vim.o.modelines = 0

vim.o.showmode = false

-- vim.o.fg = 'NONE'
-- vim.o.bg = 'NONE'

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- enable auto indentation
vim.o.autoindent = true

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

vim.opt.colorcolumn = "79"

-- searching
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.inccommand = "split"

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- hide buffers, not close them
vim.o.hidden = true

-- maintain undo history between sessions
vim.o.swapfile = false
vim.o.undofile = true

-- scroll bounds
vim.o.scrolloff = 13

-- -- fuzzy find
-- vim.o.path:append("**")
-- -- lazy file name tab completion
-- vim.o.wildmode = "list:longest,list:full"
-- vim.o.wildmenu = true
-- vim.o.wildignorecase = true
-- -- ignore files vim doesnt use
-- vim.o.wildignore:append(".git,.hg,.svn")
-- vim.o.wildignore:append(".aux,*.out,*.toc")
-- vim.o.wildignore:append(".o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class")
-- vim.o.wildignore:append(".ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp")
-- vim.o.wildignore:append(".avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg")
-- vim.o.wildignore:append(".mp3,*.oga,*.ogg,*.wav,*.flac")
-- vim.o.wildignore:append(".eot,*.otf,*.ttf,*.woff")
-- vim.o.wildignore:append(".doc,*.pdf,*.cbr,*.cbz")
-- vim.o.wildignore:append(".zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb")
-- vim.o.wildignore:append(".swp,.lock,.DS_Store,._*")
-- vim.o.wildignore:append(".,..")

-- case insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.infercase = true

-- make backspace behave in a sane manner
vim.o.backspace = "indent,eol,start"

-- show matching brackets/parenthesis
vim.opt.showmatch = true

-- disable startup message
vim.opt.shortmess:append("sI")

-- cmd display (set to zero to autohide)
vim.opt.cmdheight = 1

-- gutter sizing
vim.opt.signcolumn = "yes:2"

-- syntax highlighting
vim.opt.termguicolors = true
vim.opt.synmaxcol = 512

-- show line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- default no line wrapping
vim.opt.wrap = false

-- set indents when wrapped
vim.opt.breakindent = true

-- highlight cursor
vim.opt.cursorline = true
-- set cursorcolumn = true

-- show invisibles
vim.opt.listchars = { tab = "  ", trail = "·", extends = "»", precedes = "«", nbsp = "░" }
vim.opt.list = true

-- split style
vim.opt.fillchars = { vert = "▒" }
vim.opt.splitbelow = true
vim.opt.splitright = true
