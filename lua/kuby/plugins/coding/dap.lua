return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<Leader>db", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle Debug Breakpoint" },
      { "<Leader>dx", "<cmd>DapClearBreakpoints<cr>", desc = "Clear All Breakpoints" },
      { "<Leader>dr", "<cmd>DapContinue<cr>", desc = "Continue Debugging" },
      { "<Leader>dp", "<cmd>DapPause<cr>", desc = "Pause Debugging" },
      { "<Leader>dt", "<cmd>DapTerminate<cr>", desc = "Terminate Debugger" },
      { "<Leader>dq", "<cmd>DapDisconnect<cr>", desc = "Disconnect Debugger" },
      { "<Leader>di", "<cmd>DapStepInto<cr>", desc = "Step Into" },
      { "<Leader>do", "<cmd>DapStepOut<cr>", desc = "Step Out" },
      { "<Leader>dc", "<cmd>DapStepOver<cr>", desc = "Step Over" },
      { "<Leader>dd", "<cmd>DapNew<cr>", desc = "Start Debugger" },
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
    opts = {
      auto_toggle = true,
    },
  },
}
