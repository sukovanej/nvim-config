local dap_setup = { "rcarriga/nvim-dap-ui" }

dap_setup.requires = {
  "mfussenegger/nvim-dap",
}

dap_setup.opts = {}

function dap_setup.config(_, opts)
  local dap = require "dap"
  local dap_ui = require "dapui"
  require("dapui").setup()

  -- Dap
  vim.keymap.set("n", "<space>\'", function() dap.toggle_breakpoint() end, { silent = true })
  vim.keymap.set("n", "<space>\"", function() dap_ui.toggle() end, { silent = true })
end

return dap_setup
