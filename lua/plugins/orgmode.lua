local setup = { "nvim-orgmode/orgmode" }

setup.event = 'VeryLazy'
setup.config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
    })
    -- Experimental LSP support
    vim.lsp.enable('org')
  end

return setup
