require("transparent").setup({
extra_groups = {"NvimTreeNormal"}

})
vim.opt.syntax = "ON"                -- str:  Allow syntax highlighting
vim.opt.termguicolors = true         -- bool: If term supports ui color then enable

require("tokyonight").setup({
  transparent = vim.g.transparent_enabled,
  -- use the night style
  style = "moon",
  -- disable italic for functions
  styles = {
    functions = {}
  },
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})

vim.cmd[[colorscheme tokyonight]]
