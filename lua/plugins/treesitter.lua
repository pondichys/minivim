return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash",
      "dockerfile",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "yaml",
    },
    highlight = { enabled = true },
    incremental_selection = { enable = true },
    indent = { enabled = true },
  }
}
