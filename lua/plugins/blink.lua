local setup = { "saghen/blink.cmp" }

setup.dependencies = "rafamadriz/friendly-snippets"
setup.version = "*"

setup.opts = {
  -- 'default' for mappings similar to built-in completion
  -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
  -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
  -- See the full "keymap" documentation for information on defining your own keymap.
  keymap = { preset = "enter" },

  appearance = {
    -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
    -- Adjusts spacing to ensure icons are aligned
    nerd_font_variant = "mono",
  },

  -- Default list of enabled providers defined so that you can extend it
  -- elsewhere in your config, without redefining it, due to `opts_extend`
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },

  completion = {
    -- https://cmp.saghen.dev/recipes.html#don-t-show-completion-menu-automatically-in-cmdline-mode
    menu = {
      auto_show = function(ctx)
        return ctx.mode ~= "cmdline"
      end,
    },
  },
}

return setup
