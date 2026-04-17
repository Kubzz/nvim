return {
    {
	    "catppuccin/nvim",
  	    name = "catppuccin",
  	    priority = 1000,
	    config = function()
	        vim.cmd.colorscheme("catppuccin")
	    end,
	    opts = {
    	    lsp_styles = {
      	   	    underlines = {
           	        errors = { "undercurl" },
           	        hints = { "undercurl" },
           	        warnings = { "undercurl" },
                    information = { "undercurl" },
      	   	    },
    	    },
    	    integrations = {
      	   	    dashboard = true,
                blink = true,
      	        rainbow_delimiters = true,
                cmp = true,
      	   	    fzf = true,
      	   	    grug_far = true,
      	   	    gitsigns = true,
      		    headlines = true,
      	   	    illuminate = true,
      	   	    indent_blankline = { enabled = true },
      	   	    leap = true,
      	   	    lsp_trouble = true,
      	   	    mason = true,
      	   	    mini = true,
      	   	    navic = { enabled = true, custom_bg = "lualine" },
      	   	    neotest = true,
      	   	    neotree = true,
      	   	    noice = true,
      	   	    notify = true,
      	   	    snacks = true,
      	   	    telescope = true,
      	   	    treesitter_context = true,
      	   	    which_key = true,
    	    },
	    }
    },
}
