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
                    "elixirls",
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
                        elseif server_name == "elixirls" then
                            require("lspconfig")[server_name].setup {
                                cmd = { "/home/masonf/.local/share/nvim/elixir/language_server.sh" },
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
