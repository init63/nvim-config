local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

local servers = {
    "cssls",
    "cssmodules_ls",
    "html",
    -- "jdtls",
    "jsonls",
    "tsserver",
    "pyright",
    "stylelint_lsp",
}

local settings = {
    ensure_installed = servers,
    -- automatic_installation = false,
    ui = {
        icons = {
            -- server_installed = "◍",
            -- server_pending = "◍",
            -- server_uninstalled = "◍",
            -- server_installed = "✓",
            -- server_pending = "➜",
            -- server_uninstalled = "✗",
        },
        keymaps = {
            toggle_server_expand = "<CR>",
            install_server = "i",
            update_server = "u",
            check_server_version = "c",
            update_all_servers = "U",
            check_outdated_servers = "C",
            uninstall_server = "X",
        },
    },

    log_level = vim.log.levels.INFO,
    -- max_concurrent_installers = 4,
    -- install_root_dir = path.concat { vim.fn.stdpath "data", "lsp_servers" },
}

lsp_installer.setup(settings)

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    return
end

local opts = {}

for _, server in pairs(servers) do
    opts = {
        on_attach = require("user.lsp.handlers").on_attach,
        capabilities = require("user.lsp.handlers").capabilities,
    }

    if server == "jsonls" then
        local jsonls_opts = require "user.lsp.settings.jsonls"
        opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
    end

    if server == "pyright" then
        local pyright_opts = require "user.lsp.settings.pyright"
        opts = vim.tbl_deep_extend("force", pyright_opts, opts)
    end

    if server == "stylelint_lsp" then
        local stylelint_lsp_opts = require "user.lsp.settings.stylelint-lsp"
        opts = vim.tbl_deep_extend("force", stylelint_lsp_opts, opts)
    end

    lspconfig[server].setup(opts)
end

-- TODO: add something to installer later
-- require("lspconfig").motoko.setup {}
