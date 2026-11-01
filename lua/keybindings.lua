vim.keymap.set("n", "<C-c><C-c>", "<cmd>noh<cr>", { desc = "Clean selection" })

-- windows movement
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch window (down)" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch window (up)" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch window (right)" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch window (left)" })

-- :W = :w
for typo, command in pairs { W = "w", Wq = "wq", Wqa = "wqa" } do
  vim.api.nvim_create_user_command(typo, command, {})
end

-- buffers
vim.keymap.set("n", "}", vim.cmd.bnext, { silent = true, desc = "Next buffer" })
vim.keymap.set("n", "{", vim.cmd.bprevious, { silent = true, desc = "Previous buffer" })

-- LSP
vim.keymap.set("n", "<space>f", vim.lsp.buf.format, { silent = true, desc = "Format buffer (LSP)" })
vim.keymap.set("n", "<space>]", function()
  vim.diagnostic.jump { count = 1 }
end, { silent = true, desc = "Go to next diagnostic (LSP)" })
vim.keymap.set("n", "<space>[", function()
  vim.diagnostic.jump { count = -1 }
end, { silent = true, desc = "Go to previous diagnostic (LSP)" })

local function copy_path_command(name, modifier, desc)
  vim.api.nvim_create_user_command(name, function()
    local path = vim.fn.expand(modifier)
    vim.fn.setreg("+", path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
  end, { desc = desc })
end

copy_path_command("CopyRelativePath", "%:.", "Copy current buffer file path")
copy_path_command("CopyAbsolutePath", "%:p", "Copy current buffer absolute file path")
