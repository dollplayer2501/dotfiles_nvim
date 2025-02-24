--
-- nvim-treesitter/nvim-treesitter: Nvim Treesitter configurations and abstraction layer
-- https://github.com/nvim-treesitter/nvim-treesitter
--

return {
  "nvim-treesitter/nvim-treesitter",
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },

  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
    -- require("nvim-treesitter.configs").setup({

      -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = {
        enable = true
      },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        --
        "csv",
        "ini",
        "json",
        "toml",
        "xml",
        "yaml",
        --
        "bash",
        "fish",
        --
        "javascript",
        "lua",
        "python",
        "ruby",
        --
        "markdown",
        "markdown_inline",
        --
        "desktop",
        "dockerfile",
        "gitignore",
        "ssh_config",
        "vim",
        "vimdoc",
        --
        "css",
        "html",
        "pug",
        "scss",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}


