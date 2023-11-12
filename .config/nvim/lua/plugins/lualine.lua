return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_c, 3, {
        function()
          return vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
        end,
      })
    end,
  },
}
