local setup = { "projekt0n/github-nvim-theme" }

setup.name = "github-theme"
setup.lazy = false
setup.priority = 1000

local dark_mode_command = {
  "osascript",
  "-e",
  'tell application "System Events" to tell appearance preferences to get dark mode',
}

-- Colors from GitHub's primer palette, per background
local palette = {
  dark = {
    fg = "#e6edf3",
    param = "#d4a72c",
    namespace = "#7ee787",
    const = "#79c0ff",
    global = "#ff9bce",
    type = "#ffa657",
  },
  light = {
    fg = "#1f2328",
    param = "#6e4c00",
    namespace = "#116329",
    const = "#0550ae",
    global = "#bf3989",
    type = "#953800",
  },
}

local function set_highlights()
  local c = palette[vim.o.background] or palette.dark
  local hl = function(name, val)
    vim.api.nvim_set_hl(0, name, val)
  end

  if vim.o.background == "dark" then
    hl("CursorLine", { bg = "#161b22" })
  end

  hl("@variable.parameter", { fg = c.param, italic = true })
  hl("@variable.member", { link = "@property" })
  hl("@variable.member.typescript", { link = "@function.method.typescript" })

  -- Semantic tokens: modifier groups have higher priority than type groups, and
  -- attributes they leave unset (e.g. fg when only bold is set) fall through.
  hl("@lsp.type.variable", { fg = c.fg }) -- the LSP knows it's a plain variable, overrule treesitter guesses
  hl("@lsp.type.property", { link = "@property" })
  hl("@lsp.type.class", { link = "@type" }) -- theme links it to @function
  hl("@lsp.mod.deprecated", { strikethrough = true })

  -- Go (gopls)
  hl("@lsp.type.namespace.go", { fg = c.namespace }) -- fmt, strings, ...
  hl("@lsp.type.typeParameter.go", { fg = c.type, italic = true }) -- generic T
  hl("@lsp.typemod.variable.readonly.go", { fg = c.const }) -- constants, nil, true
  hl("@lsp.typemod.variable.static.go", { fg = c.global }) -- package-level vars (mutable global state)
  hl("@lsp.typemod.variable.definition.go", { bold = true }) -- declaration site: x := ..., var x
  hl("@lsp.typemod.parameter.definition.go", { bold = true })
  hl("@lsp.typemod.function.definition.go", { bold = true })
  hl("@lsp.typemod.method.definition.go", { bold = true })
  hl("@lsp.typemod.type.definition.go", { bold = true })
end

local current_dark = nil

local function apply_theme(dark)
  if dark == current_dark then
    return
  end
  current_dark = dark
  vim.o.background = dark and "dark" or "light"
  vim.cmd.colorscheme(dark and "github_dark_default" or "github_light_default")
end

local function is_dark(result)
  return result.stdout:find "true" ~= nil
end

setup.config = function()
  require("github-theme").setup {}

  vim.api.nvim_create_autocmd("ColorScheme", { callback = set_highlights })

  if vim.fn.executable(dark_mode_command[1]) == 0 then
    apply_theme(false)
    return
  end

  apply_theme(is_dark(vim.system(dark_mode_command, { text = true }):wait()))

  -- Re-check system theme when Neovim regains focus
  vim.api.nvim_create_autocmd("FocusGained", {
    callback = function()
      vim.system(
        dark_mode_command,
        { text = true },
        vim.schedule_wrap(function(result)
          if result.code == 0 then
            apply_theme(is_dark(result))
          end
        end)
      )
    end,
  })
end

return setup
