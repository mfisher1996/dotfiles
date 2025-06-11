return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        },
        config = function()
            require('mason').setup()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "tailwindcss",
                },
                handlers = {
                    function(server_name)
                        if server_name == "tailwindcss" then
                            require("lspconfig")[server_name].setup {
                                init_options = {
                                    userLanguages = {
                                        rust = "html",
                                    },
                                },
                                filetypes = {
                                    "html",
                                    "javascript",
                                    "javascriptreact",
                                    "typescript",
                                    "typescriptreact",
                                    "rust",
                                },
                            }
                        else
                            require("lspconfig")[server_name].setup {}
                        end
                    end
                }
            })
        end
    }
}
