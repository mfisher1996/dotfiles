return {
    "nvim-lua/popup.nvim",
    "linrongbin16/lsp-progress.nvim",
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>fs", "<cmd>Telescope live_grep<cr>",  desc = "Live Grep" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Help" },
            { "<leader>fg", "<cmd>Telescope git_files<cr>",  desc = "Git Files" },
        },
        dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep", "nvim-tree/nvim-web-devicons" },
    },
    "p00f/nvim-ts-rainbow",
    "lewis6991/gitsigns.nvim",
    "windwp/nvim-autopairs",
    "norcalli/nvim-colorizer.lua",
    {
        "ThePrimeagen/harpoon",
        keys = {
            { '<leader>m', ':lua require("harpoon.mark").add_file()<CR>',        desc = 'Add harpoon file' },
            { '<leader>h', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', desc = 'open harpoon' },
            { '<C-k>',     ':lua require("harpoon.ui").nav_next()<CR>',          desc = 'Next File' },
            { '<C-j>',     ':lua require("harpoon.ui").nav_prev()<CR>',          desc = 'Previous File' },
            { '<leader>b', ':lua require("harpoon.tmux").gotoTerminal(1)<CR>',   desc = 'tmux' },
        },
    },
    "tpope/vim-fugitive",
    {
        "mbbill/undotree",
        keys = {
            { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undo Tree" },
        },
    },
    {
        "folke/trouble.nvim",
        keys = {
            {
                "<leader>tt",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Open Trouble",
            },
        },
        opts = {},
    },
    {
        'Exafunction/codeium.vim',
        config = function()
            -- Change '<C-g>' here to any keycode you like.
            vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
            vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
                { expr = true, silent = true })
            vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
                { expr = true, silent = true })
            vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
        end,
    },
    "tpope/vim-fugitive",
}
