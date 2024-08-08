return {
  -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    require('mini.tabline').setup()

    require('mini.icons').setup()
    MiniIcons.mock_nvim_web_devicons()

    local minidiff = require 'mini.diff'

    minidiff.setup {
      view = {
        style = 'sign',
        signs = {
          add = '+',
          change = '~',
          delete = '-',
        },
      },
    }

    vim.keymap.set('n', '<leader>mdo', '<cmd>lua MiniDiff.toggle_overlay(0)<CR>', { desc = '[M]ini [D]iff [O]verlay' })
    vim.keymap.set('n', '<leader>[h', '<cmd>lua MiniDiff.goto_hunk next ()', { desc = 'Go to next [H]unk' })
    vim.keymap.set('n', '<leader>]h', '<cmd>lua MiniDiff.goto_hunk prev ()', { desc = 'Go to previous [H]unk' })

    local statusline = require 'mini.statusline'
    statusline.setup {
      use_icons = vim.g.have_nerd_font,
      options = {
        sections = {
          lualine_x = { 'filetype' },
        },
        inactive_sections = {
          lualine_x = { 'enconding', 'fileformat' },
        },
      },
    }

    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_filename = function()
      return '%f%m%r'
    end

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}
