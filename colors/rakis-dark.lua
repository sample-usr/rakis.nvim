require("rakis.config").setup(vim.tbl_deep_extend("force", vim.g.rakis_opts or {}, { theme = { variant = "default" } }))
require("rakis").load()
vim.g.colors_name = "rakis-dark"
