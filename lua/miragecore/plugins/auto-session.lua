return {
  'rmagatti/auto-session',
  lazy = false,
  dependencies = {
    'nvim-telescope/telescope.nvim', -- Only needed if you want to use session lens
  },

  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      suppressed_dirs = { '~/', '~/Downloads', '/' },
      auto_restore = false,
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", {desc = "Restore sessions for cwd"})
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", {desc = "Save sessions for cwd"})
  end
}
