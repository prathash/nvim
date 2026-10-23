
return {
    {
        "stevearc/conform.nvim",
        opts = function(_, opts)
            -- All formatter settings in one place
            opts.formatters_by_ft = vim.tbl_deep_extend(
                "force",
                opts.formatters_by_ft or {},
                {
                    -- C and C++
                    c = { "clang_format" },
                    cpp = { "clang_format" },

                    -- Python
                    python = { "ruff_format" },

                    -- JavaScript / TypeScript
                    javascript = { "prettier" },
                    javascriptreact = { "prettier" },
                    typescript = { "prettier" },
                  typescriptreact = { "prettier" },

                    -- Web languages
                    html = { "prettier" },
                    css = { "prettier" },
                    scss = { "prettier" },
                    less = { "prettier" },

                    -- Other supported formats
                    json = { "prettier" },
                    jsonc = { "prettier" },
                    yaml = { "prettier" },
                    markdown = { "prettier" },
                }
            )

            -- Automatically format when saving
            opts.format_on_save = {
                timeout_ms = 1000,
                lsp_format = "fallback",
            }
        end,
    },
}

