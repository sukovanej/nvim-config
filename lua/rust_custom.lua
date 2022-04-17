require("rust-tools").setup {
  inlay_hints = {
    -- wheter to show parameter hints with the inlay hints or not
    show_parameter_hints = true,

    -- prefix for parameter hints
    parameter_hints_prefix = ":: ",

    -- prefix for all the other hints (type, chaining)
    other_hints_prefix = ":: ",
    right_align = false,
  },
}
