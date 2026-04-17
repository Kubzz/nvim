return {
    {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
    	version = "*",
	dependencies = {
	    {
	    	"nvim-lua/plenary.nvim",
	    	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
	    }
	},
	opts = {
	    defaults = {
		layout_strategy = "horizontal",
	        layout_config = { prompt_position = "top" },
        	sorting_strategy = "ascending",
        	winblend = 0
	    }
	},
	keys = { 
	    { "<leader>,", "<cmd>Telescope buffers sort_mru sort_lastused=true<cr>", desc = "Switch Buffer" },
	    { "<leader>/", function() require("telescope.builtin").live_grep() end, desc = "Grep (Root Dir)" },
      	    { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
      	    { "<leader><space>", function() require("telescope.builtin").find_files() end, desc = "Find Files (Root Dir)" },
	    
	    -- find
	    { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true ignore_current_buffer=true<cr>",desc = "Buffers" },
	    { "<leader>fB", "<cmd>Telescope buffers<cr>", desc = "Buffers (all)" },
      	    { "<leader>fc", function() require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
      	    { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find Files (Root Dir)" },
      	    { "<leader>fF", function() require("telescope.builtin").find_files({ root = false }) end, desc = "Find Files (cwd)" },
      	    { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
      	    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
      	    { "<leader>fR", function() require("telescope.builtin").find_files({ cwd = vim.uv.cwd() }) end, desc = "Recent (cwd)" },
      	    
	    -- git
      	    { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
      	    { "<leader>gl", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
      	    { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Status" },
      	    { "<leader>gS", "<cmd>Telescope git_stash<cr>", desc = "Git Stash" },
      	    
	    -- search
      	    { '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
      	    { "<leader>s/", "<cmd>Telescope search_history<cr>", desc = "Search History" },
      	    { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
      	    { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer Lines" },
      	    { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
      	    { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
      	    { "<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
      	    { "<leader>sD", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Buffer Diagnostics" },
      	    { "<leader>sg", function() require("telescope.builtin").find_files() end, desc = "Grep (Root Dir)" },
      	    { "<leader>sG", function() require("telescope.builtin").lie_grep({ root = false }) end, desc = "Grep (cwd)" },
      	    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
      	    { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
      	    { "<leader>sj", "<cmd>Telescope jumplist<cr>", desc = "Jumplist" },
      	    { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
      	    { "<leader>sl", "<cmd>Telescope loclist<cr>", desc = "Location List" },
      	    { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
      	    { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
      	    { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
      	    { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
      	    { "<leader>sq", "<cmd>Telescope quickfix<cr>", desc = "Quickfix List" },
--      	    { "<leader>sw", LazyVim.pick("grep_string", { word_match = "-w" }), desc = "Word (Root Dir)" },
--      	    { "<leader>sW", LazyVim.pick("grep_string", { root = false, word_match = "-w" }), desc = "Word (cwd)" },
--      	    { "<leader>sw", LazyVim.pick("grep_string"), mode = "x", desc = "Selection (Root Dir)" },
--      	    { "<leader>sW", LazyVim.pick("grep_string", { root = false }), mode = "x", desc = "Selection (cwd)" },
--      	    { "<leader>uC", LazyVim.pick("colorscheme", { enable_preview = true }), desc = "Colorscheme with Preview" },
    	},
    }
}
