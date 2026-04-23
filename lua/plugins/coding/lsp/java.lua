return {
  {
    "nvim-java/nvim-java",
    dependencies = {
      "folke/which-key.nvim",
    },
    config = function()
      require("java").setup({
        jdk = {
          auto_install = false,
        },
      })
      vim.lsp.enable("jdtls")
      vim.lsp.config("jdtls", {
        settings = {
          java = {
            configurations = {
              runtimes = {
                {
                  name = "JavaSE-21",
                  path = "~/.sdkman/candidates/java/current/bin/java",
                  default = true,
                },
              },
            },
          },
        },
      })

      -- Had to do it this way due to a race condition with which key
      local wk = require("which-key")
      if wk then
        wk.add({
          { "<Leader>cjr", "<cmd>JavaRunnerRunMain<cr>", desc = "Run Java Main Class" },
          { "<Leader>cjr", "<cmd>JavaRunnerRunMain<cr>", desc = "Run Java Main Class" },
          { "<Leader>cjs", "<cmd>JavaRunnerStopMain<cr>", desc = "Stop Running Java Application" },
          { "<Leader>cjl", "<cmd>JavaRunnerToggleLogs<cr>", desc = "Toggle Running Java Logs" },
          { "<Leader>cjb", "<cmd>JavaBuildBuildWorkspace<cr>", desc = "Build Java Workspace" },
          { "<Leader>cjc", "<cmd>JavaBuildCleanWorkspace<cr>", desc = "Clean Java Workspace" },
        })
      end
    end,
  },
  --keys = {
  --{ "<Leader>cjr", "<cmd>JavaRunnerRunMain<cr>", desc = "Run Java Main Class" },
  --    { "<Leader>cjs", "<cmd>JavaRunnerStopMain<cr>", desc = "Stop Running Java Application" },
  --    { "<Leader>cjl", "<cmd>JavaRunnerToggleLogs<cr>", desc = "Toggle Running Java Logs" },
  --    { "<Leader>cjb", "<cmd>JavaBuildBuildWorkspace<cr>", desc = "Build Java Workspace" },
  --    { "<Leader>cjc", "<cmd>JavaBuildCleanWorkspace<cr>", desc = "Clean Java Workspace" },
  --},
}
