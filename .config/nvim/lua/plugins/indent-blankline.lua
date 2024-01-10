local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    -- event = "VeryLazy",
    opts = function(_, opts)
      local hooks = require("ibl.hooks")
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#483554" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#917a4e" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#2f5675" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#755639" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#475b38" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#2c5d63" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#643d70" })
      end)

      opts.indent = {
        char = "»",
        highlight = highlight,
      }
    end,
  },
}
