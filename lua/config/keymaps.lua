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
