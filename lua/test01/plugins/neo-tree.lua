--
--
--

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  enabled = false,

  config = function()
    require("neo-tree").setup({
      window = {
        position = "left",
        width = 40,
        mappings = {
          -- TODO: Keybind does not change, why?
          -- ["<tab>"] = "open_in_tab",
          -- ["<S-p>"] = "",
        },
      },
    })
  end,
}
