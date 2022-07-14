local options = {
  number = true,
  relativenumber = true,
  cursorline = true,
  signcolumn = "yes",
  scrolloff = 2,

  smartindent = true,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,

  confirm = true,
  undofile = true,
  updatetime = 300,
  termguicolors = true,

  clipboard = "unnamedplus"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[set iskeyword+=-]]
