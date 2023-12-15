-- only highlight when searching
vim.api.nvim_create_autocmd("CmdlineEnter", {
   callback = function ()
      local cmd = vim.v.event.cmdtype
      if cmd == "/" or cmd == "?" then
         vim.opt.hlsearch = true
      end
   end
})
vim.api.nvim_create_autocmd("CmdlineLeave", {
   callback = function ()
      local cmd = vim.v.event.cmdtype
      if cmd == "/" or cmd == "?" then
         vim.opt.hlsearch = false
      end
   end
})

-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
   callback = function()
      vim.highlight.on_yank({ timeout = 200 })
   end
})

-- Disable auto comment
vim.api.nvim_create_autocmd("BufEnter", {
   callback = function ()
      vim.opt.formatoptions = { c = false, r = false, o = false }
   end
})

-- turn on spell check for markdown and text file
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.md" },
   callback = function()
      vim.opt_local.spell = true
   end
})

-- keymap for .cpp file
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.cpp", "*.cc" },
   callback = function()
      -- vim.keymap.set("n", "<Leader>e", ":terminal ./a.out<CR>",
      --    { silent = true })
      vim.keymap.set("n", "<Leader>e", ":!./sfml-app<CR>",
         { silent = true })
   end
})

-- tab format for .lua file
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.lua" },
   callback = function()
      vim.opt.shiftwidth = 4
      vim.opt.tabstop = 4
      vim.opt.softtabstop = 4
      -- vim.opt_local.colorcolumn = {70, 80}
   end
})

-- keymap for .go file
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.go" },
   callback = function()
      vim.keymap.set("n", "<Leader>e", ":terminal go run %<CR>",
         { silent = true })
   end
})

vim.api.nvim_create_autocmd({ 'BufEnter' }, {
  pattern = 'NvimTree*',
  callback = function()
    local api = require('nvim-tree.api')
    local view = require('nvim-tree.view')

    if not view.is_visible() then
      api.tree.open()
    end
  end,
})
