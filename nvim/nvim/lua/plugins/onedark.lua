return{
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    init =  function ()
        require("onedarkpro").setup({
            colors = {
                bg = "#11051c",
            }
        })
    end
}
