return {
   {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },

      init = function()
         local builtin = require("telescope.builtin")
         vim.keymap.set("n", "ff", builtin.find_files, { noremap = true })
         vim.keymap.set("n", "fb", builtin.buffers, { noremap = true })
         vim.keymap.set("n", "fh", builtin.help_tags, { noremap = true })
         vim.keymap.set("n", "<C-f>", builtin.live_grep, { noremap = true })

         local telescope = require('telescope')
         telescope.setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<CR>"] = function(bufnr)
                                require("telescope.actions.set").edit(bufnr, "tab drop")
                            end,
                            ["<C-t>"] = function(bufnr)
                                require("telescope.actions.set").edit(bufnr, "tab drop")
                            end,
                        }
                    }
                }
            })
      end
   }
}
