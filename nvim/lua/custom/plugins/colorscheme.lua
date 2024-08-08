return {
  -- { 'rebelot/kanagawa.nvim' },
  -- { 'NTBBloodbath/doom-one.nvim' },
  -- { 'ramojus/mellifluous.nvim' },
  -- { 'catppuccin/nvim' },
  -- { 'nanotech/jellybeans.vim' },
  -- { 'rose-pine/neovim' },
  -- {
  --   'scottmckendry/cyberdream.nvim',
  -- },
  -- {
  --   'navarasu/onedark.nvim',
  -- },
  { 'dasupradyumna/midnight.nvim' },
  {
    'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'github_dark_dimmed'
      vim.cmd.colorscheme 'github_dark_default'
      vim.cmd.hi 'Comment gui=none'

      local theme = require 'github-theme'

      theme.setup {
        transparent = true,
        styles = {
          sidebars = 'transparent',
          floats = 'transparent',
        },
      }
    end,
  },
  { 'lunacookies/vim-colors-xcode' },
  {
    'Mofiqul/vscode.nvim',
    config = function()
      -- vim.cmd.colorscheme 'vscode'
      -- vim.cmd.hi 'Comment gui=none'

      local c = require('vscode.colors').get_colors()
      require('vscode').setup {

        -- Enable transparent background
        -- transparent = false,

        -- Enable italic comment
        italic_comments = true,

        -- Underline `@markup.link.*` variants
        -- underline_links = true,
        -- Disable nvim-tree background color
        disable_nvimtree_bg = true,

        -- Override colors (see ./lua/vscode/colors.lua)
        color_overrides = {
          vscLineNumber = '#FFFFFF',
        },

        -- Override highlight groups (see ./lua/vscode/theme.lua)
        group_overrides = {
          -- this supports the same val table as vim.api.nvim_set_hl
          -- use colors from this colorscheme by requiring vscode.colors!
          Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
        },
      }
    end,
    -- init = function()
    --   vim.cmd.colorscheme 'vscode'
    --   vim.cmd.hi 'Comment gui=none'
    -- end,
  },
}
