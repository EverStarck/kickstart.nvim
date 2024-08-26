return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      colums = { 'icon' },
      keymaps = {
        ['<C-h>'] = false,
        ['<C-m>'] = 'actions.select_split',
      },
      view_options = {
        show_hidden = true,
      },
    }

    -- Open parent directory in current window
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

    -- Open parent directory in floating window
    vim.keymap.set('n', '<space>-', require('oil').toggle_float)
  end,
}
