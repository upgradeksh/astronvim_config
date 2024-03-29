return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    event = "User AstroFile",
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },

  { "better-escape.nvim", enabled = false },

  {
    "azabiong/vim-highlighter",
    lazy = false, -- Not Lazy by default
    keys = {
      -- These are basing keymaps to guide new users
      { "f<Enter>", desc = "Highlight" },
      { "f<BS>", desc = "Remove Highlight" },
      { "f<C-L>", desc = "Clear Highlight" },
      { "f<Tab>", desc = "Find Highlight (similar to Telescope grep)" },
      -- They are derivated from the default keymaps, see README.md to github repo for documentation
    },
  },
}
