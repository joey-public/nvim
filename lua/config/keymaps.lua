local keymap = vim.keymap

--set(<mode>, <mycmd>, <defaultcmd>, {desc})
--    mode: "i", "n", "" (insert, normal, all)
--    mycmd: the shortcut you want to use
--    defaultcmd: the command you want to trigger
--    desc: and optional description 

--general
local NOTES_DIR = "~/Notes/"
keymap.set("", "<leader><leader>", "<S-:>", {desc = "Enter command"})
keymap.set("n", "oo", "o<esc>", {desc = "goto nexline"})
keymap.set("n", "<leader>g", "<S-g>",{desc="go to bottom of file"})
keymap.set("n", "<leader>b", ":ls<CR>:b",{desc="go to bottom of file"})
--createing new files
keymap.set("n", "<leader>nn", "<S-:>e ~/Notes/", {desc="create new note"})
keymap.set("n", "<leader>nc", "<S-:>e ~/.config/nvim/", {desc="create new config"})
--opening files
--Note .. is used for string concatination in lua
local short_date_template = vim.fn.strftime("%Y%m%d")
keymap.set("n", "<leader>odn", "<S-:>e ~/Notes/"..short_date_template..".md<CR>", {desc="open daily note"}) --open 
keymap.set("n", "ot", ":e"..NOTES_DIR.."Tasks.md<CR>")
--templates
--TODO: possibly create a templates file with template strings
local short_date_template = vim.fn.strftime("%Y%m%d")
local long_date_template = vim.fn.strftime("%A: %B %d, %Y")
local daily_note_template = "# "..long_date_template.."\n\n**tags:** \n\n___\n\n\n___\n\n# Refrences\n\n" 
keymap.set("n", "<leader>td", "\"="..short_date_template.."<CR>P", {desc="insert current date yyyymmdd"})
--keymap.set("n", "<leader>td", "\"="..long_date_template.."<CR>P", {desc="insert current date FOW: MONTH Dat YYYY"})
--keymap.set("n", "<leader>tdn", "\"="..daily_note_template.."<CR>P6j", {desc="insert daily note template"}) 

--netrw
-- keymap.set("n", "<leader>f", 
--                 "<S-:>e .<CR>", 
--                 {desc = "open file explorer in current window"})
-- keymap.set("n", "<leader>ff", 
--                 "<S-:>let g:netrw_banner=0 | split | e .  <CR>", 
--                 {desc = "open file explorer in new window"})


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


