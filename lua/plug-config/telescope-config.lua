local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    file_ignore_patterns={".git/*","node_modules","env/*"},
    -- prompt_position="top",
    color_devicons =true,
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}

