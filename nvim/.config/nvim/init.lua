require("core.options")
require("core.autocmds")
require("core.plugins")
require("core.mappings")

vim.env.PATH = vim.fn.expand("$PWD/node_modules/.bin") .. ":" .. vim.env.PATH
vim.env.PATH = vim.fn.expand("$PWD/vendor/.bin") .. ":" .. vim.env.PATH
