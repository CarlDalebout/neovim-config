return {
  'aliqyan-21/darkvoid.nvim',
  config = function()
    require('darkvoid').setup {
      transparent = false,
      glow = true,
      show_end_of_buffer = true,

      colors = {
        fg = '#c0c0c0',
        bg = '#1c1c1c',
        cursor = '#bdfe58',
        line_nr = '#404040',
        visual = '#303030',
        comment = '#585858',
        string = '#d1d1d1',
        func = '#e1e1e1',
        kw = '#f1f1f1',
        identifier = '#b1b1b1',
        type = '#a1a1a1',
        -- type_builtin = '#c5c5c5', -- current
        type_builtin = '#8cf8f7', -- glowy blue old (was present by default before type_builtin was introduced added here for people who may like it)
        search_highlight = '#1bfd9c',
        operator = '#1bfd9c',
        bracket = '#e6e6e6',
        preprocessor = '#4b8902',
        bool = '#66b2b2',
        constant = '#b2d8d8',
        -- enable or disable specific plugin highlights
        plugins = {
          gitsigns = true,
          nvim_cmp = true,
          treesitter = true,
          nvimtree = true,
          telescope = true,
          lualine = true,
          bufferline = true,
          oil = true,
          whichkey = true,
          nvim_notify = true,
        },

        -- gitsigns colors
        added = '#baffc9',
        changed = '#ffffba',
        removed = '#ffb3ba',

        -- Pmenu colors
        pmenu_bg = '#1c1c1c',
        pmenu_sel_bg = '#1bfd9c',
        pmenu_fg = '#c0c0c0',

        -- EndOfBuffer color
        eob = '#3c3c3c',

        -- Telescope specific colors
        border = '#585858',
        title = '#bdfe58',

        -- bufferline specific colors
        bufferline_selection = '#1bfd9c',

        -- LSP diagnostics colors
        error = '#dea6a0',
        warning = '#d6efd8',
        hint = '#bedc74',
        info = '#7fa1c3',
      },
    }
    -- vim.cmd.colorscheme 'darkvoid'
  end,
},
-- {
--   'rmehri01/onenord.nvim',
--   config = function()
--     require('onenord').setup {
--       theme = 'dark', -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
--       borders = true, -- Split window borders
--       fade_nc = false, -- Fade non-current windows, making them more distinguishable
--       -- Style that is applied to various groups: see `highlight-args` for options
--       styles = {
--         comments = 'NONE',
--         strings = 'NONE',
--         keywords = 'NONE',
--         functions = 'NONE',
--         variables = 'NONE',
--         diagnostics = 'underline',
--       },
--       disable = {
--         background = true,
--         float_background = false, -- Disable setting the background color for floating windows
--         cursorline = false, -- Disable the cursorline
--         eob_lines = true, -- Hide the end-of-buffer lines
--       },
--       -- Inverse highlight for different groups
--       inverse = {
--         match_paren = false,
--       },
--       custom_highlights = {}, -- Overwrite default highlight groups
--       custom_colors = {}, -- Overwrite default colors
--     }
--     vim.cmd.colorscheme 'onenord.nvim'
--   end,
-- },
{
  'rebelot/kanagawa.nvim',
  config = function()
    require('kanagawa').setup {
      compile = true, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- set background to clear
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      theme = 'wave', -- Load "wave" theme
      background = { -- map the value of 'background' option to a theme
        dark = 'dragon', -- try "dragon" !
        light = 'lotus',
      },
    }
    vim.cmd.colorscheme 'kanagawa-wave'
  end,
  build = function()
    vim.cmd 'KanagawaCompile'
  end,
}
