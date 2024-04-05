local trouble = require("trouble")

vim.keymap.set("n", "<leader>t", function() trouble.toggle() end)
