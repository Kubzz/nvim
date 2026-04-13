return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opt = function(_, opts)
      table.insert(opts.source, { name = "emoji" })
    end,
  },
}
