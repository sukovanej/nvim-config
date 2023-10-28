local gitsigns_setup = { "lewis6991/gitsigns.nvim" }

gitsigns_setup.opts = {
  current_line_blame = true,
}

function gitsigns_setup.config(_, opts)
  require("gitsigns").setup(opts)
end

return gitsigns_setup
