local keymap = vim.keymap

keymap.set("", "<leader><leader>", "<S-:>", {desc = "Enter command"})
keymap.set("n", "oo", "o<esc>", {desc = "goto nexline"})
