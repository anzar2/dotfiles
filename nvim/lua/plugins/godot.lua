return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local lspconfig = require("lspconfig")

      lspconfig.gdscript.setup({
        name = "gdscript",
        cmd = { "nc", "localhost", "6005" }, -- usa el puerto que viste en Godot
        root_dir = function()
          return vim.fn.getcwd()
        end,
        on_attach = function(client, bufnr)
          vim.notify("Godot LSP conectado ✅", vim.log.levels.INFO)
        end,
      })
    end,
  },
}

