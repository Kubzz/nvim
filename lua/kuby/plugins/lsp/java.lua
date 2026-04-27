return {
  {
    "nvim-java/nvim-java",
    config = function()
    require("java").setup({
      jdk = {
        auto_install = false
      }
    })
    --vim.cmd("unmap j") -- Unmapping so I can use the key mapping
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

    vim.keymap.set("n", "j", "", { noremap = true })
    vim.keymap.set("n", "jr", "<cmd>JavaRunnerRunMain<cr>", { desc = "Run Java Main Class" })
    vim.keymap.set("n", "js", "<cmd>JavaRunnerStopMain<cr>", { desc = "Stop Running Java Application" })
    vim.keymap.set("n", "jl", "<cmd>JavaRunnerToggleLogs<cr>", { desc = "Toggle Running Java Logs" })
    vim.keymap.set("n", "jb", "<cmd>JavaBuildBuildWorkspace<cr>", { desc = "Build Java Workspace" })
    vim.keymap.set("n", "jc", "<cmd>JavaBuildCleanWorkspace<cr>", { desc = "Clean Java Workspace" })

    end,
    },
}
