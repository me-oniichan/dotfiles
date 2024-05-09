return{
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    init =  function ()
        require("onedarkpro").setup({
            colors = {
                bg = "#11051c",
            },
            highlights = {
                TabLineSel = { fg = "#f0f0f0", bg = "#ff0000" },
                Visual = { fg = "#f0f0f0", bg = "#3388ff" },
            }
        })
    end
}
