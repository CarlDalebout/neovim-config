-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybind to enter File Explorer
vim.keymap.set('n', '<leader>fe', '<cmd>Ex<CR>', { desc = 'Opens [F]ile [E]xplore' })

-- Disabling arrow keys
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('v', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('v', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('v', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('v', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('i', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('i', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('i', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('i', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('i', '<M-h>', '<Left>', { desc = 'Move the cursor left' })
vim.keymap.set('i', '<M-k>', '<Up>', { desc = 'Move the cursor up' })
vim.keymap.set('i', '<M-j>', '<Down>', { desc = 'Move the cursor down' })
vim.keymap.set('i', '<M-l>', '<Right>', { desc = 'Move the cursor right' })

vim.keymap.set('n', 'H', '^', { desc = 'move to first char in the row' })
vim.keymap.set('n', 'L', '$', { desc = 'move to last char in the row' })
vim.keymap.set({ 'n', 'v' }, 'J', '}')
vim.keymap.set({ 'n', 'v' }, 'K', '{')

-- Keybind to exit insert mode
vim.keymap.set('i', 'jj', '<C-[>', { desc = '<esc> insert mode' })
vim.keymap.set('i', 'jk', '<C-[>', { desc = '<esc> insert mode' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
vim.keymap.set('n', '<C-S-h>', '<C-w>h', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>l', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>j', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>k', { desc = 'Move window to the upper' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

--" " 'Copy to clipboard'
vim.keymap.set('v', '<leader>y', '+y', { desc = 'Copy to clipboard' })
vim.keymap.set('n', '<leader>Y', '+yg_', { desc = 'Copy to clipboard' })
vim.keymap.set('n', '<leader>y', '+y', { desc = 'Copy to clipboard' })
vim.keymap.set('n', '<leader>yy', '+yy', { desc = 'Copy to clipboard' })

--" " 'Paste from clipboard'
vim.keymap.set('n', '<leader>p', '+p', { desc = 'Paste from clipboard' })
vim.keymap.set('n', '<leader>P', '+P', { desc = 'Paste from clipboard' })
vim.keymap.set('v', '<leader>p', '+p', { desc = 'Paste from clipboard' })
vim.keymap.set('v', '<leader>P', '+P', { desc = 'Paste from clipboard' })

vim.keymap.set('n', '<leader>tn', function() --toggle relative vs absolute line numbers
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
    vim.wo.number = true
  else
    vim.wo.relativenumber = true
  end
end, { desc = '[T]oggle [N]umbers setting' })
