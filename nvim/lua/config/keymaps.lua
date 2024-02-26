-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>cp", "<cmd>DapToggleBreakpoint<cr>", { desc = "DapToggleBreakpoint" })
vim.keymap.set("n", "<leader>cD", "<cmd>RustDebuggables<cr>", { desc = "RustDebuggables" })
vim.keymap.set("n", "<leader>cs", function()
  local widgets = require("dap.ui.widgets")
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Toggle DAP Sidebar" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set(
  "n",
  "<leader>ce",
  "<cmd>:lua vim.diagnostic.open_float(0, {scope='line'})<cr>",
  { desc = "Toggle float diagnostic" }
)
