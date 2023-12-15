return {
   {
      "catppuccin/nvim",
      name = "catppuccin",
      opts = {
         flavour = "mocha",
         color_overrides = {
            mocha = {
              base = "#11051c",
              mantle = "#11051c",
              red = "#DF5B61",
              lavender = "#B4BEFE",
              teal = "#7ACFE4",
            }
         },
         custom_highlights = function(colors)
            return {
               VertSplit = { fg = colors.surface0 },
            }
         end,
      },
   },
}
