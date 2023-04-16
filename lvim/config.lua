lvim.plugins = {
  { "shaunsingh/nord.nvim" },
  { "sainnhe/everforest" },
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        highlight_overrides = {
          all = function(colors)
            return {
              HopNextKey = { fg = colors.peach, style = {} },
              HopNextKey1 = { fg = colors.peach, style = {} },
              HopNextKey2 = { fg = colors.flamingo, style = {} },
            }
          end
        },
        integrations = {
          hop = true,
          telescope = true,
          nvimtree = true,
          gitsigns = true,
          cmp = true,
        }
      })
    end
  },
  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
      require("hop").setup({
        keys = "setnrigmplfuwybjdhvk",
      })
    end
  },
}

-- Note: If a command has 'no' at the start,
-- remove it and use false as the value.
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.timeoutlen = 1 -- which-key open instant

lvim.leader = "space"
lvim.keys.normal_mode["j"] = ":HopWord<cr>"
lvim.keys.normal_mode["<tab>"] = ":bnext<cr>"
lvim.keys.normal_mode["<S-tab>"] = ":bprev<cr>"
lvim.keys.normal_mode["<esc>"] = ":nohlsearch<cr>:cclose<cr><esc>"
lvim.keys.normal_mode["<C-v>"] = '"+pa<esc>'
lvim.keys.insert_mode["<C-v>"] = '<esc>"+pa'
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["<C-s>"] = "<esc>:w<cr>a"

lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

-- These theme options don't seem to work
-- lvim.builtin.theme.tokyonight.options.style = "day"
-- lvim.builtin.theme.tokyonight.options.on_highlights = function(hl, c)
--   hl.HopNextKey = { fg = c.yellow }
--   hl.HopNextKey1 = { fg = c.yellow }
--   hl.HopNextKey2 = { fg = c.yellow }
-- end
-- vim.g.tokyonight_style = "day"

-- nord
-- everforest
-- catppuccin
-- tokyonight-storm
-- catppuccin-frappe
-- catppuccin-macchiato
lvim.colorscheme = "catppuccin-macchiato"
vim.g.nord_italic = false
vim.g.nord_bold = false

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }
