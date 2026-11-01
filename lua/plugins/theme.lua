local setup = { "projekt0n/github-nvim-theme" }

setup.name = "github-theme"
setup.lazy = false
setup.priority = 1000

local dark_mode_command = {
  "osascript",
  "-e",
  'tell application "System Events" to tell appearance preferences to get dark mode',
}

local function set_highlights()
  if vim.o.background == "dark" then
    vim.api.nvim_set_hl(0, "@variable.parameter", { fg = "#d4a72c", italic = true })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#161b22" })
  else
    vim.api.nvim_set_hl(0, "@variable.parameter", { fg = "#6e4c00", italic = true })
  end

  vim.api.nvim_set_hl(0, "@lsp.type.variable", {}) -- disable, let treesitter handle it
  vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@property" })
  vim.api.nvim_set_hl(0, "@variable.member", { link = "@property" })
  vim.api.nvim_set_hl(0, "@variable.member.typescript", { link = "@function.method.typescript" })
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
