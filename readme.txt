This is my personal nvim configuration.

When creating a new instance of your nvim setup, run this clone

-- linux
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

	    -- windows
	    git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

-- Need to run g++ for some treesitter dependencies
sudo apt-get install g++

	    to do: map out all custom keybinds in readme.
	    LSP
	    vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
	    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
	    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	    ['<cr>'] = cmp.mapping.confirm({ select = true }),
	    ['<C-Space>'] = cmp.mapping.complete(),
	    Basic
	    vim.g.mapleader = " "
	    vim.keymap.set("n", "<leader>d", vim.cmd.Ex) 

	    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
	    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

	    vim.keymap.set("n", "C-d>", "<C-d>zz")
	    vim.keymap.set("n", "C-u>", "<C-u>zz")

	    vim.keymap.set("n","n","nzzzv")
	    vim.keymap.set("n","N","Nzzzv")




	    Undotree
	    vim.keymap.set("n","<leader>u", vim.cmd.UndotreeToggle)

	    Telescope
	    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	    vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
	    vim.keymap.set('n', '<leader>fs', function()
			    builtin.grep_string({search = vim.fn.input("Grep > ") })

			    Fugitive (git)
			    vim.keymap.set("n", "<leader>gr", vim.cmd.Git)

			    Harpoon (window management)
			    vim.keymap.set("n", "<leader>a", mark.add_file) 
			    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

			    vim.keymap.set("n","<C-z>", function() ui.nav_file(1) end)
			    vim.keymap.set("n","<C-x>", function() ui.nav_file(2) end)
			    vim.keymap.set("n","<C-h>", function() ui.nav_file(3) end)
			    vim.keymap.set("n","<C-t>", function() ui.nav_file(4) end)

			    vim.keymap.set("n","<C-n>", function() ui.nav_next() end)
			    vim.keymap.set("n","<C-b>", function() ui.nav_next() end)


