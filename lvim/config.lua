lvim.plugins = {
  { "shaunsingh/nord.nvim" },
  { "ggandor/leap.nvim" },
}

local leap = require("leap")
leap.opts.case_sensitive = false
leap.opts.labels = {
  'a', 'b', 'c', 'd', 'e',
  'f', 'g', 'h', 'i', 'j',
  'k', 'l', 'm', 'n', 'o',
  'p', 'q', 'r', 's', 't',
  'u', 'v', 'w', 'x', 'y', 'z'
}

local function leap_bidirectional()
  leap.leap { target_windows = { vim.fn.win_getid() } }
end

lvim.keys.normal_mode["s"] = leap_bidirectional

-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

lvim.leader = "space"

-- Change theme settings
lvim.colorscheme = "nord"
vim.g.nord_italic = false
vim.g.nord_bold = false

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- always installed on startup, useful for parsers without a strict filetype
lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }
