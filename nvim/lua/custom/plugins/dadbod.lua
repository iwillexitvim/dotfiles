return {
  'kristijanhusak/vim-dadbod-ui',
  'kristijanhusak/vim-dadbod-completion',
  {
    'tpope/vim-dadbod',
    opt = true,
    requires = {
      'kristijanhusak/vim-dadbod-ui',
      'kristijanhusak/vim-dadbod-completion',
    },
    config = function()
      -- require('config.dadbod').setup()
      local function db_completion()
        require('cmp').setup.buffer { sources = { { name = 'vim-dadbod-completion' } } }
      end

      vim.g.db_ui_save_location = vim.fn.stdpath 'config' .. require('plenary.path').path.sep .. 'db_ui'
      vim.g.db_ui_use_nvim_notify = 1

      vim.api.nvim_create_autocmd('FileType', {
        pattern = {
          'sql',
        },
        command = [[setlocal omnifunc=vim_dadbod_completion#omni]],
      })

      vim.api.nvim_create_autocmd('FileType', {
        pattern = {
          'sql',
          'mysql',
          'plsql',
        },
        callback = function()
          vim.schedule(db_completion)
        end,
      })

      local keymap = vim.keymap

      keymap.set('n', '<leader>dd', '<cmd>DBUIToggle<CR>', { desc = 'Toggle dadbod' })
    end,
  },
}
