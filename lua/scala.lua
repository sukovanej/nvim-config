vim.cmd [[augroup lsp]]
vim.cmd [[au!]]
vim.cmd [[au FileType java,scala,sbt lua require("metals").initialize_or_attach({})]]
vim.cmd [[augroup end]]
