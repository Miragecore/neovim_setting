
# shortcuts

copy nvim folder to `~/.config/nvim`
copy .zshrc to `~/`

Lazy Install/Update

## keymap.lua

```lua
keymap.set("i", "jk", "<ESC>", {desc = "Exit insert mode with jk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights" })

-- increment/decrement number
keymap.set("n", "<leader>+", "<C-a>", {desc = "Increment number"})
keymap.set("n", "<leader>-", "<C-x>", {desc = "Decrement number" })

--tab
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new Tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "close new Tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "next Tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "previous Tab"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Open current buffer in new Tab"})
```

## nvim-tree

```lua
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", {desc = "Toggle file explorer"})
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", {desc = "toggle file explorer on current"})
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", {desc = "colapse file explorer"})
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", {desc = "Refress file explorer"})
```

## telescope

### in file search window

```lua
i = {
  ["<C-k>"] = actions.move_selections_previous,
  ["<C-j>"] = actions.move_selections_next,
  ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
},
```
- use qflist

```lua
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {desc = "fuzzy find files in cwd"})
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", {desc = "fuzzy find recent files"})
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", {desc = "find strings in cwd"})
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", {desc = "fiind string under cursor in "})
```

## Auto-session

```lua
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", {desc = "Restore sessions for cwd"})
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", {desc = "Save sessions for cwd"})
```

## maximizer

```lua
{"<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split"},
```


