local colors = {
  bg       = '#1d2021',
  fg       = '#ebdbb2',
  yellow   = '#fabd2f',
  cyan     = '#8ec07c',
  darkblue = '#081633',
  green    = '#b8bb26',
  orange   = '#fe8019',
  violet   = '#d3869b',
  magenta  = '#c678dd',
  blue     = '#83a598',
  red      = '#fb4934',
  gray     = '#a89984',
}

local mode_color = {
  n = colors.gray,
  i = colors.blue,
  v = colors.orange,
  -- [''] = colors.blue,
  V = colors.blue,
  c = colors.magenta,
  no = colors.red,
  s = colors.orange,
  S = colors.orange,
  [''] = colors.orange,
  ic = colors.yellow,
  R = colors.violet,
  Rv = colors.violet,
  cv = colors.red,
  ce = colors.red,
  r = colors.cyan,
  rm = colors.cyan,
  ['r?'] = colors.cyan,
  ['!'] = colors.red,
  t = colors.red,
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {'filename','branch'},
    lualine_c = {'fileformat'},
    lualine_z = {'location'},
    -- These will be filled later
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_a, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_z, component)
end

ins_left {
  function()
    return ''
  end,
  color = function()
    return { bg = colors.bg, fg = mode_color[vim.fn.mode()] }
  end,
  padding = { left = 0, right = 0 }, -- We don't need space before this
}

ins_left {
  'mode',
  padding = { left = 0, right = 0 },
}


ins_right {
  function()
    return ''
  end,
  color = function()
    return { fg = mode_color[vim.fn.mode()] , bg = colors.bg }
  end,
  padding = { left = 0, right = 0 },
}

require('lualine').setup(config)
