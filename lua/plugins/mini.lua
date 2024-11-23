return {
    "echasnovski/mini.nvim",
    version = false,
    lazy = false,
    config = function()
        -- UI related modules
        -- Enable icons
        require("mini.icons").setup()
        -- Configure statusline
        require("mini.statusline").setup()
        -- Enable and configure tab line
        require("mini.tabline").setup()
        -- Enable and configure keymap clues
        require("mini.clue").setup({
            triggers = {
                -- Leader triggers
                { mode = "n", keys = "<leader>" },
                { mode = "x", keys = "<leader>" },
                -- g key
                { mode = "n", keys = "g" },
                { mode = "x", keys = "g" },
            },
            clues = {
                require("mini.clue").gen_clues.builtin_completion(),
                require("mini.clue").gen_clues.g(),
            },
        })
        -- Enable and configure indentation guidelines
        require("mini.indentscope").setup()
        -- Enable and configure nicer notifications
        require("mini.notify").setup()
        -- Enable and configure telescope like picker
        local win_config = function()
            height = math.floor(0.618 * vim.o.lines)
            width = math.floor(0.618 * vim.o.columns)
            return {
                anchor = "NW",
                height = height,
                width = width,
                border = "double",
                row = math.floor(0.5 * (vim.o.lines - height)),
                col = math.floor(0.5 * (vim.o.columns - width)),
            }
        end
        require("mini.pick").setup({
            options = { content_from_bottom = true },
            window = { config = win_config },
        })
        vim.keymap.set("n", "<leader>fb", "<cmd>Pick buffers<cr>", { desc = "Pick buffer" })
        vim.keymap.set("n", "<leader>ff", "<cmd>Pick files<cr>", { desc = "Pick file" })
        vim.keymap.set("n", "<leader>fg", "<cmd>Pick grep_live<cr>", { desc = "Grep live pattern" })
        vim.keymap.set("n", "<leader>fh", "<cmd>Pick help<cr>", { desc = "Pick help" })
        -- Enable and configure file explorer
        require("mini.files").setup()
        vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<cr>", { desc = "File explorer" })
        -- Enable and configure diffs
        require("mini.diff").setup()
        -- Enable and configure highlights (similar to todo-comments)
        require("mini.hipatterns").setup({
            highlighters = {
                -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
                fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
                hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
                todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
                note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

                -- Highlight hex color strings (`#rrggbb`) using that color
                hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
            },
        })
        -- Editor related modules
        -- Enable and configure auto-pairs
        require("mini.pairs").setup()
        -- Enable and configure surrounds
        require("mini.surround").setup()
        -- Enable and configure extra pickers, a/i objects and highlighters
        require("mini.extra").setup()
        -- Enable and configure completions
        require("mini.completion").setup()
        -- Enable and configure comment
        require("mini.comment").setup()
        -- Enable and configure move text with alt-{h,j,k,l}
        require("mini.move").setup()
    end,
}
