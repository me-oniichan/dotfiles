return {
   {
      'nvim-tree/nvim-tree.lua',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      opts = {
         on_attach = function (bufnr)
            local api = require('nvim-tree.api')

            local function opts(desc)
              return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            local swap_then_open_tab = function()
                vim.cmd("wincmd l")
                api.node.open.tab_drop()
            end

            api.config.mappings.default_on_attach(bufnr)

            -- override a default
            vim.keymap.set('n', '<CR>', swap_then_open_tab, opts('Open file in new tab'));
            -- remove default bind
            vim.keymap.del('n', '<C-t>', { buffer = bufnr })

        end,

        tab = {
            sync = {
                open = true,
                close = true
            }
        }
      },
   }
}
