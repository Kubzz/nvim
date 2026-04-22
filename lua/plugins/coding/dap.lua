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
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
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
