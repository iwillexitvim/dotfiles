return {
  'luukvbaal/statuscol.nvim',
  config = function()
    local builtin = require 'statuscol.builtin'
    require('statuscol').setup {
      -- configuration goes here, for example:
      -- relculright = true,
      segments = {
        {
          sign = { namespace = { 'diagnostic' }, maxwidth = 1, auto = false },
          click = 'v:lua.ScSa',
        },
        {
          sign = { namespace = { 'gitsigns*' }, maxwidth = 1, colwidth = 2, auto = false },
          click = 'v:lua.ScSa',
        },
        { text = { builtin.lnumfunc, '  ' }, click = 'v:lua.ScLa' },
        { text = { builtin.foldfunc, ' ' }, click = 'v:lua.ScFa' },
      },
    }
  end,
}
