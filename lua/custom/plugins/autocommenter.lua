return {
  {
    'terrortylor/nvim-comment',
    branch = 'main',
    config = function()
      require('nvim_comment').setup {}
    end,
  },
}
