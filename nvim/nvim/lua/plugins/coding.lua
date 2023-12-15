return {
   {
      "norcalli/nvim-colorizer.lua",
      config = function ()
         require 'colorizer'.setup()
      end
   },
   {
      "lukas-reineke/indent-blankline.nvim",
      config = function ()
         require("ibl").setup()
      end
   },
   {
     "simrat39/rust-tools.nvim",
     config = function ()
         local rt = require("rust-tools")

         rt.setup({
            server = {
               on_attach = function(_, bufnr)
     -- Hover actions
               vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
        -- Code action groups
               vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
            end,
            standalone = true
        },
     })
     end
   },
   {
	   'xeluxee/competitest.nvim',
	   dependencies = 'MunifTanjim/nui.nvim',
       opts = {
            received_problems_path = "$(CWD)/Competitive Programming/$(JUDGE)/$(PROBLEM).$(FEXT)",
            received_contests_directory = "$(CWD)/Competitive Programming/$(JUDGE)/$(CONTEST)"
       },
       init = function() require('competitest').setup() end,
   }
}
