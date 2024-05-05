return {
  { 'rebelot/kanagawa.nvim' },
  { 'NTBBloodbath/doom-one.nvim' },
  { 'ramojus/mellifluous.nvim' },
  { 'catppuccin/nvim' },
  { 'nanotech/jellybeans.vim' },
  { 'rose-pine/neovim' },
  {
    'scottmckendry/cyberdream.nvim',
  },
  {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'onedark'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  { 'dasupradyumna/midnight.nvim' },
}
