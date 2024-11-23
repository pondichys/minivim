-- Personal options
-- Leader key =================================================================
vim.g.mapleader = ' '

-- General ====================================================================
vim.o.backup       = false          -- Don't store backup
vim.o.mouse        = 'a'            -- Enable mouse
vim.o.writebackup  = false          -- Don't store backup
vim.o.undofile     = true           -- Enable persistent undo

-- UI =========================================================================
vim.o.breakindent   = true      -- Indent wrapped lines to match line start
vim.o.cursorline    = true      -- Enable highlighting of the current line
vim.o.linebreak     = true      -- Wrap long lines at 'breakat' (if 'wrap' is set)
vim.o.list          = true      -- Show helpful character indicators
vim.o.number        = true      -- Show line numbers
vim.o.splitbelow    = true      -- Horizontal splits will be below
vim.o.splitright    = true      -- Vertical splits will be to the right
vim.o.termguicolors = true      -- Enable gui colors

-- Colors =====================================================================
-- Enable syntax highlighing if it wasn't already (as it is time consuming)
-- Don't use defer it because it affects start screen appearance
if vim.fn.exists('syntax_on') ~= 1 then vim.cmd('syntax enable') end

-- Editing ====================================================================
vim.o.autoindent    = true     -- Use auto indent
vim.o.expandtab     = true     -- Convert tabs to spaces
vim.o.ignorecase    = true     -- Ignore case when searching (use `\C` to force not doing that)
vim.o.incsearch     = true     -- Show search results while typing
vim.o.shiftwidth    = 2        -- Use this number of spaces for indentation
vim.o.smartcase     = true     -- Don't ignore case when searching if pattern has upper case
vim.o.smartindent   = true     -- Make indenting smart
vim.o.smarttab      = true     -- Make tabbing smart
-- vim.o.tabstop       = 2        -- Insert 2 spaces for a tab
vim.o.virtualedit   = 'block'  -- Allow going past the end of line in visual block mode

vim.opt.iskeyword:append('-')  -- Treat dash separated words as a word text object

-- Spelling ===================================================================
vim.o.spelllang    = 'en,fr,uk'   -- Define spelling dictionaries
vim.o.spelloptions = 'camel'      -- Treat parts of camelCase words as seprate words
vim.opt.complete:append('kspell') -- Add spellcheck options for autocomplete
vim.opt.complete:remove('t')      -- Don't use tags for completion


-- Folds ======================================================================
-- vim.o.foldmethod  = 'indent' -- Set 'indent' folding method
-- vim.o.foldlevel   = 1        -- Display all folds except top ones
-- vim.o.foldnestmax = 10       -- Create folds only for some number of nested levels
-- vim.g.markdown_folding = 1   -- Use folding by heading in markdown files

if vim.fn.has('nvim-0.10') == 1 then
  vim.o.foldtext = ''        -- Use underlying text with its highlighting
end

