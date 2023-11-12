return {
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require("auto-session").setup({
        auto_session_enabled = true,
        auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",

        auto_session_enable_last_session = false,
        auto_session_last_session_dir = vim.fn.stdpath("data") .. "/sessions/",

        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      })
    end,
  },
}
