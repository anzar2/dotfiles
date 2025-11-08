return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = false,  -- muestra solo archivos no filtrados
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

