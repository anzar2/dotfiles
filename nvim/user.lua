-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {
  { "elkowar/yuck.vim" },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local lspconfig = require("lspconfig")
      lspconfig.gdscript.setup({
        name = "gdscript",
        cmd = { "nc", "localhost", "6005" },
        root_dir = function()
          return vim.fn.getcwd()
        end,
        on_attach = function(client, bufnr)
          vim.notify("Connected to Godot LSP", vim.log.levels.INFO)
        end,
      })
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_pattern = {
            "*.import",
            "*.uid",
            "*.translation",
            "*.godot",
            "*/.godot/*",
            "*/.import/*",
            ".editorconfig",
            ".gitattributes",
            "*.tscn",
          },
        },
      },
    },
  },
}
