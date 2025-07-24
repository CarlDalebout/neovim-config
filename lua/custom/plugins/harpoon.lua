return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  event = 'VimEnter',
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = '[H]arpoon a buffer [A]dding it to the list' })
    vim.keymap.set('n', '<leader>hd', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[H]arpoon [D]isplay list' })

    vim.keymap.set('n', '<M-h>', function()
      harpoon:list():select(1)
    end, { desc = '[H]arpoon to [1]st item on the list' })
    vim.keymap.set('n', '<M-j>', function()
      harpoon:list():select(2)
    end, { desc = '[H]arpoon to the [2]nd item on the list' })
    vim.keymap.set('n', '<M-k>', function()
      harpoon:list():select(3)
    end, { desc = '[H]arpoon to the [3]rd item on the list' })
    vim.keymap.set('n', '<M-l>', function()
      harpoon:list():select(4)
    end, { desc = '[H]arpoon to the [4]rd item on the list ' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<M-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<M-S-N>', function()
      harpoon:list():next()
    end)
  end,
}
