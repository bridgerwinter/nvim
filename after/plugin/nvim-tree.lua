require("nvim-tree").setup()
 local function my_on_attach(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
      return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end
end
vim.keymap.set('n','<leader>e', vim.cmd.NvimTreeToggle)
