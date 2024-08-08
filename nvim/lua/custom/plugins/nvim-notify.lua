return {
  'rcarriga/nvim-notify',
  config = function()
    vim.notify = require 'notify'

    local notify = require 'notify'

    notify.setup {
      render = 'compact',
      stages = 'fade',
      background_colour = '#000000',
    }
  end,
}
