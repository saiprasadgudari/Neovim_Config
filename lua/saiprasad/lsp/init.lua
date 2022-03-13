local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "saiprasad.lsp.lsp-installer"
require("saiprasad.lsp.handlers").setup()
