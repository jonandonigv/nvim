local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true
opt.colorcolumn = "120"

-- Cursor behavior
opt.cursorline = false -- Highlight current line
opt.scrolloff = 10 -- Keep 10 lines above/below cursor
opt.sidescrolloff = 10 -- Keep 10 columns left/right of cursor

-- Cursor shape set to block in all modes
opt.guicursor = "n-v-sm:block,i-ci-ve:block,r-cr-o:block,t:block-TermCursor"

-- Tabs & indentation
opt.tabstop = 2 -- 2 spaces per tab
opt.shiftwidth = 2 -- Indent width matches tabstop
opt.expandtab = true -- Convert tabs to spaces
opt.autoindent = true -- Copy indent from current line when starting new one
opt.smartindent = true -- Smart auto-indenting

opt.wrap = false -- Don't wrap long lines

-- Search settings
opt.ignorecase = true -- Case-insensitive search
opt.smartcase = true -- Case-sensitive if uppercase letters present
opt.hlsearch = false -- Don't highlight all matches
opt.incsearch = true -- Show matches as you type

-- Turn on termguicolors for colorscheme to work
opt.termguicolors = true
opt.background = "dark" -- Colorschemes that can be light or dark will be dark
opt.signcolumn = "yes" -- Always show sign column

-- Backspace
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end line or insert mode start position

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- Split windows
opt.splitright = true -- Open vertical splits to the right
opt.splitbelow = true -- Open horizontal splits below

-- Performance and UX
opt.updatetime = 250 -- Faster CursorHold events
opt.timeoutlen = 300 -- Faster key sequence timeout
opt.mouse = "a" -- Enable mouse in all modes
opt.breakindent = true -- Indent wrapped lines
opt.confirm = true -- Ask to save instead of failing

-- Persistent undo
opt.undofile = true -- Persistent undo across sessions

-- File explorer settings
vim.g.netrw_liststyle = 3 -- Tree view in netrw
