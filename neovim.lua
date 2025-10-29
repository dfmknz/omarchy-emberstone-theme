return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#28363f", -- Default background
                base01 = "#ffd47d", -- Lighter background (status bars)
                base02 = "#28363f", -- Selection background
                base03 = "#ffd47d", -- Comments, invisibles
                base04 = "#fae4ba", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#fae4ba", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#846767", -- Variables, errors, red
                base09 = "#b09898", -- Integers, constants, orange
                base0A = "#ffd47b", -- Classes, types, yellow
                base0B = "#76847a", -- Strings, green
                base0C = "#91a7a7", -- Support, regex, cyan
                base0D = "#ffe284", -- Functions, keywords, blue
                base0E = "#c28b67", -- Keywords, storage, magenta
                base0F = "#ffe5b6", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
