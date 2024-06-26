return {
  "nvim-tree/nvim-tree.lua",
  keys = {
    { "<leader>ntt", ":NvimTreeToggle<CR>", desc = "NvimTreeToggle" },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({})
  end,
}
