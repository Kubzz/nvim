return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      bufdelete = {},
      dim = {},
      explorer = {},
      git = {},
      lazygit = {},
      picker = {
        sources = {
          explorer = {},
        },
      },
      statuscolumn = {},
    },
    keys = {
      -- Bufdelete
      {
        "<Leader>bd",
        function()
          Snacks.bufdelete()
        end,
        desc = "Delete Buffer",
      },
      {
        "<Leader>bD",
        function()
          Snacks.bufdelete.all()
        end,
        desc = "Delete All Buffer",
      },

      -- Dim
      {
        "<leader>cd",
        function()
          Snacks.dim.enable()
        end,
        desc = "Focus on current scope",
      },
      {
        "<leader>cD",
        function()
          Snacks.dim.disable()
        end,
        desc = "Focus on whole buffer",
      },

      -- Files
      {
        "<Leader>ff",
        function()
          Snacks.picker.files()
        end,
        desc = "Find Files",
      },
      {
        "<Leader>fr",
        function()
          Snacks.picker.recent()
        end,
        desc = "Recent Files",
      },
      {
        "<Leader>fp",
        function()
          Snacks.picker.projects()
        end,
        desc = "Projects",
      },
      {
        "<Leader>fg",
        function()
          Snacks.picker.git_files()
        end,
        desc = "Find Files (git-files)",
      },
      {
        "<Leader>fc",
        function()
          Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
        end,
        desc = "Config Files",
      },

      -- Explorer
      {
        "<Leader>fe",
        function()
          Snacks.picker.explorer()
        end,
        desc = "File Explorer",
      },
      {
        "<Leader>fF",
        function()
          Snacks.explorer.reveal()
        end,
        desc = "Locate Buffer in Explorer",
      },

      -- Git
      {
        "<leader>gb",
        function()
          Snacks.git.blame_line()
        end,
        desc = "Show Git Blame for current line",
      },

      -- LazyGit
      {
        "<Leader>gl",
        function()
          Snacks.lazygit()
        end,
        desc = "LazyGit",
      },

      -- Picker (Folke Telescope)
      {
        "<Leader>ss",
        function()
          Snacks.picker()
        end,
        desc = "Picker",
      },
      {
        "<Leader>sc",
        function()
          Snacks.picker.commands()
        end,
        desc = "Commands",
      },
      {
        "<Leader>sC",
        function()
          Snacks.picker.command_history()
        end,
        desc = "Command History",
      },
    },
  },
}
