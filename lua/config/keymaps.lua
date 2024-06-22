local keymap = vim.keymap

--set(<mode>, <mycmd>, <defaultcmd>, {desc})
--    mode: "i", "n", "" (insert, normal, all)
--    mycmd: the shortcut you want to use
--    defaultcmd: the command you want to trigger
--    desc: and optional description 
keymap.set("", "<leader><leader>", "<S-:>", {desc = "Enter command"})
keymap.set("n", "oo", "o<esc>", {desc = "goto nexline"})
keymap.set("n", "<leader>f", 
                "<S-:>e .<CR>", 
                {desc = "open file explorer in current window"})
keymap.set("n", "<leader>ff", 
                "<S-:>let g:netrw_banner=0 | split | e .  <CR>", 
                {desc = "open file explorer in new window"})

------------------
--PLUGIN KEYMAPS--
------------------
-- Telescope 
keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>") 
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
-- Comments 
vim.api.nvim_set_keymap("n", "<C-k>", "gcc", {noremap=false})
vim.api.nvim_set_keymap("v", "<C-k>", "gcc", {noremap=false})

