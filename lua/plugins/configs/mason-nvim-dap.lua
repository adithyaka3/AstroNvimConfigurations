-- TODO: remove unnecessary file in AstroNvim v4
return function(_, opts)
    local mason_nvim_dap = require("mason-nvim-dap")
    mason_nvim_dap.setup(opts)
end

-- return {
--     "jay-babu/mason-nvim-dap.nvim",
--     opts = {
--         ensure_installed = { "python" },
--     },
-- }
