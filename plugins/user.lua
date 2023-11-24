return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      return require("astronvim.utils").extend_tbl(opts, {
        defaults = require("astronvim.utils").extend_tbl(opts.defaults, {
          file_ignore_patterns = {
            "%.jpg",
            "%.gif",
            "%.png",
            "%.tga",
            "venv/*",
            "target/*",
	    "node_modules/*",
          },
        }),
      })
    end,
  },
  {
      "eddyekofo94/gruvbox-flat.nvim",
      config = function()
          vim.o.background = "dark"
          vim.g.gruvbox_flat_style = "hard"
      end,
  },
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
}
