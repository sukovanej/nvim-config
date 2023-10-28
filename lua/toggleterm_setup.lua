local toggleterm_setup = { "akinsho/toggleterm.nvim" }

function toggleterm_setup.config()
  require("toggleterm").setup {
    direction = "float",
    float_opts = {
      border = "curved",
    },
  }
end

return toggleterm_setup
