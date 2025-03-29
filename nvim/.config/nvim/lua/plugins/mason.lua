return {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
      	"williamboman/mason-lspconfig.nvim",
    },
    opts = {},
    config = function (_, opts)
        require("mason").setup(opts)
        local registry = require "mason-registry"

        local success, package = pcall(registry.get_package, "lua-language-server")
        if success and not package:is_installed() then
            package:install()
        end
    end,

}

