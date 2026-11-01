-- TypeScript 7 ships its language server as `tsc --lsp`; lspconfig's tsgo config expects a `tsgo` binary.
local lspconfig_tsgo = dofile(vim.api.nvim_get_runtime_file("lsp/tsgo.lua", false)[1])

local function has_typescript_7(root)
  if vim.fn.executable(vim.fs.joinpath(root, "node_modules/.bin/tsc")) == 0 then
    return false
  end
  local ok, lines = pcall(vim.fn.readfile, vim.fs.joinpath(root, "node_modules/typescript/package.json"))
  if not ok then
    return false
  end
  local decoded, package = pcall(vim.json.decode, table.concat(lines, "\n"))
  local major = decoded and tonumber(tostring(package.version):match "^(%d+)")
  return major ~= nil and major >= 7
end

return {
  cmd = function(dispatchers, config)
    local tsc = vim.fs.joinpath(config.root_dir, "node_modules/.bin/tsc")
    return vim.lsp.rpc.start({ tsc, "--lsp", "--stdio" }, dispatchers)
  end,
  root_dir = function(bufnr, on_dir)
    lspconfig_tsgo.root_dir(bufnr, function(root)
      if has_typescript_7(root) then
        on_dir(root)
      end
    end)
  end,
}
