return {
  'm4xshen/autoclose.nvim',
  branch = 'main',

  config = function()
    require('autoclose'):setup()
  end,
  keys = {

    ['$'] = { escape = true, close = true, pair = '$$', disabled_filetypes = {} },
  },
}
