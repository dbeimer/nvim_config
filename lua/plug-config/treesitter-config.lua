local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "javascript",
    "typescript",
    "tsx",
    "gitignore",
    "jsdoc"
  },
  autotag = {
    enable = true,
  },
}
