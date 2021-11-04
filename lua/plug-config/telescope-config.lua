local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    file_ignore_patterns={".git/*","node_modules","env/*"},
    -- prompt_position="top",
    -- color_devicons =true,
    mappings = {
      n = {
        ["q"] = actions.close,
        ["<C-y>"]=actions.file_vsplit
      },
      i={
        ["<C-y>"]=actions.file_vsplit
      }
    },
  }
}

