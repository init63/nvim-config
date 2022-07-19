-- Example config in Lua
require("github-theme").setup {
    theme_style = "dimmed",
    comment_style = "italic",
    keyword_style = "NONE",
    function_style = "NONE",
    variable_style = "NONE",
    sidebars = { "qf", "vista_kind", "terminal", "packer" },

    -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    colors = { hint = "orange", error = "#ff0000" },

    -- Overwrite the highlight groups
    overrides = function(c)
        return {
            htmlTag = { fg = c.red, bg = "#282c34", sp = c.hint, style = "underline" },
            DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
            -- this will remove the highlight groups
            TSField = {},
        }
    end,
}

-- vim.cmd "colorscheme gruvbox"
