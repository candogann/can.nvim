return {
  {
    'm4xshen/autoclose.nvim',
    branch = 'main',
    config = function()
      require('autoclose').setup {
        keys = {},
      }
    end,
  },
}
