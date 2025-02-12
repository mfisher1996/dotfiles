return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdateSync',
    ops = {
        ensure_installed = { 'lua', 'rust', 'ocaml', 'json', 'js', 'csharp', 'fsharp',
        },
        sync_install = false,
        ignore_install = { "" },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
            disable = {}
        },
        rainbow = {
            enable = true,
            extend_mode = true,
            max_file_lines = nil,
        },
    },
    config = function(_, opts)
        require('nvim-treesitter.configs').setup(opts)
    end

}
