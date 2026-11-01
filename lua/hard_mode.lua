for _, key in ipairs { "<Up>", "<Down>", "<Left>", "<Right>" } do
  vim.keymap.set({ "", "i" }, key, "<Nop>")
end
