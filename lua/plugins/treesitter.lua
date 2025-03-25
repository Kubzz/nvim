return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        enable = true
      },
      indent = {
        enable = true
      },
      autotag = {
        enable = true
      },
      incremental_selection = {
        enable = true
      },
      rainbow = {
        enable = true,
        extended_mode = false,
        max_file_lines = nil;
      },
      context_commentstring = {
        enable = true,
        enable_autocmd = false
      },
      ensure_installed = {
        "bash",
        "css",
        "diff",
        "dockerfile",
        "gitignore",
        "groovy",
        "helm",
        "html",
        "http",
        "java",
        "javadoc",
        "javascript",
        "json",
        "just",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "nginx",
        "python",
        "requirements",
        "sql",
        "terraform",
        "tmux",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "vue",
        "xml",
        "yaml"
      }
    }
  }
}
