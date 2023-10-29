local devicons_setup = { "kyazdani42/nvim-web-devicons" }

devicons_setup.opts = {}

function devicons_setup.config(_, opts)
  require("nvim-web-devicons").setup(opts)
end

return devicons_setup
