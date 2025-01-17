require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  ------------------------------------------------------------
  -- General Plugins
  ------------------------------------------------------------ LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Lsp Config
      { 'williamboman/mason.nvim' },           -- Lsp Package Manegr
      { 'williamboman/mason-lspconfig.nvim' }, -- Mason lsp config

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Cmp Completion Plugin
      { 'hrsh7th/cmp-nvim-lsp' }, -- Cmp LSP

      -- Snippets
      { 'saadparwaiz1/cmp_luasnip' },
      { 'L3MON4D3/LuaSnip' },

      -- Others
      { 'onsails/lspkind.nvim' },                -- VSCode-Like Pictograms
      { 'hrsh7th/cmp-nvim-lsp-signature-help' }, -- Functions signature
      { 'hrsh7th/cmp-path' },                    -- Path
      -- { 'MunifTanjim/prettier.nvim' }            -- Prettier
    }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Plenary
  use 'nvim-lua/plenary.nvim'

  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }

  -- Fuzzy finder using telescope
  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Fuzzy finder using fzf
  use {
    'junegunn/fzf',
    dir = '~/.fzf',
    run = './install --all'
  }
  use 'junegunn/fzf.vim'

  -- Renames variables / functions
  use {
    'filipdutescu/renamer.nvim',
    branch = 'master',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  ------------------------------------------------------------
  -- UI Plugins
  ------------------------------------------------------------
  use 'akinsho/bufferline.nvim'             -- BufferLine
  use 'nvim-lualine/lualine.nvim'           -- LuaLine
  use 'chrisbra/changesPlugin'              -- Easy visibility on changes i made on a file
  use 'ryanoasis/vim-devicons'              -- Dev icons without color
  use 'lukas-reineke/indent-blankline.nvim' -- Indent Guide lines
  use 'echasnovski/mini.indentscope'        -- Highlight indent scope
  use 'kyazdani42/nvim-web-devicons'        -- Dev icons with color
  use 'rcarriga/nvim-notify'                -- Fancy notification ui
  use 'xiyaowong/transparent.nvim'          -- Remove Background
  use 'ellisonleao/gruvbox.nvim'            -- Gruvbox Colorscheme

  ------------------------------------------------------------
  -- Useful Plugins
  ------------------------------------------------------------
  use 'uga-rosa/ccc.nvim'                   -- Color picker
  use 'ntpeters/vim-better-whitespace'      -- Removes whitespaces
  use 'mattn/emmet-vim'                     -- Emmet
  use 'windwp/nvim-autopairs'               -- AutoPairs
  use 'numToStr/Comment.nvim'               -- For fast commenting
  use 'djoshea/vim-autoread'                -- Updates the buffer if the file updates externally
  use 'airblade/vim-rooter'                 -- Updates the root to the root of the project
  use 'christoomey/vim-tmux-navigator'      -- Tmux Navigator
  use 'tpope/vim-surround'                  -- Surround changer

  ------------------------------------------------------------
  -- Other Plugins
  ------------------------------------------------------------
  use 'leafOfTree/vim-svelte-plugin'        -- Svelte specific plugin
  -- use 'elkowar/yuck.vim'                    -- A plugin for eww.yuck
  use 'andweeb/presence.nvim'               -- Discord Rich Presence
  use 'akinsho/toggleterm.nvim'             -- Floaterm
  use 'norcalli/nvim-colorizer.lua'         -- Adds color to hex, rbg etc... values
  use 'ThePrimeagen/vim-be-good'            -- A game to practice vim-motion
end)

-- setups
require('Comment').setup()
require('colorizer').setup()
require('renamer').setup()
require('presence').setup()

-- vim-svelte-plugin
vim.g.svelte_indent_script = 2
vim.g.svelte_indent_style = 2

-- vim-changesPlugin
vim.g.changes_add_sign = '█'
vim.g.changes_delete_sign = '█'
vim.g.changes_modified_sign = '█'

-- vim-closetag
vim.g.closetag_filenames = '*.html,*.svelte,*.ejs'
