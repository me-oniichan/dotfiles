return {
  "andweeb/presence.nvim",
  event = "VeryLazy",
  config = function()
    local project_name = vim.fn.fnamemodify(vim.loop.cwd(), ":t")
    require("presence"):setup({
      auto_update         = true,
      neovim_image_text   = "" .. project_name,
      main_image          = "neovim",
      enable_line_number  = false,
      buttons             = true,
      show_time           = true,
      editing_text        = "Editing %s",
      file_explorer_text  = "Browsing %s",
      git_commit_text     = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text        = "Reading %s",
      workspace_text      = "Working on %s",
      line_number_text    = "Line %s out of %s",
    })
  end,
}
