local setup = { "saghen/blink.cmp" }

setup.dependencies = "rafamadriz/friendly-snippets"
setup.version = "*"

setup.opts = {
  keymap = { preset = "enter" },

  completion = {
    menu = {
      draw = {
        columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind", gap = 1 }, { "source_name" } },
      },
    },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 200,
    },
  },
}

return setup
