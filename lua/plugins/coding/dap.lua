return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<Leader>cb", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle Debug Breakpoint" },
      { "<Leader>cx", "<cmd>DapClearBreakpoints<cr>", desc = "Clear All Breakpoints" },
      { "<Leader>cr", "<cmd>DapContinue<cr>", desc = "Continue Debugging" },
      { "<Leader>cp", "<cmd>DapPause<cr>", desc = "Pause Debugging" },
      { "<Leader>ct", "<cmd>DapTerminate<cr>", desc = "Terminate Debugger" },
      { "<Leader>cq", "<cmd>DapDisconnect<cr>", desc = "Disconnect Debugger" },
      { "<Leader>ci", "<cmd>DapStepInto<cr>", desc = "Step Into" },
      { "<Leader>co", "<cmd>DapStepOut<cr>", desc = "Step Out" },
      { "<Leader>cc", "<cmd>DapStepOver<cr>", desc = "Step Over" },
      { "<Leader>cd", "<cmd>DapNew<cr>", desc = "Start Debugger" },
    },
  },
  {
    "igorlfs/nvim-dap-view",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    lazy = false,
    version = "1.*",
    opts = {},
  },

  -- GoLang
  {
    "leoluz/nvim-dap-go",
    config = function()
      local go = require("dap-go")
      go.setup({
        dap_configurations = {
          type = "go",
          name = "Debug",
          request = "launch",
          program = "${fileDirname}",
        },
      })
    end,
  },
}
