# My NViM config (cheatsheet for me)

### Removing old files
```bash
mv ~/.config/nvim ~/.config/old-nvim-config 
```

### Installation
```bash
git clone https://github.com/93mmm/nvim.git ~/.config/nvim
```

## Config review

- Swapfile disabled
- Using relative numbers
- Leader - space
- Tab width 2
- Yanking to clipboard
---

#### Splits and windows
- `<leader>sv` -- Vertical split window
- `<leader>sh` -- Horizontal split window
<br>

- `<leader>wn` -- Window New
- `<leader>wc` -- Window Close
- `<leader>wt` -- Window Terminal
- `<Esc>`      -- Enter normal mode in Terminal
<br>

- `<leader>[number]` -- Switch to next window
<br>

- `gh` -- Switch to left splitted window
- `gj` -- Switch to bottom splitted window
- `gk` -- Switch to top splitted window
- `gl` -- Switch to right splitted window
<br>
---

#### Moving
- `vK` -- move line up
- `vJ` -- move line down 
- `<C-k>` -- Up for a half of page
- `<C-j>` -- Down for a half of page
---

#### Telescope
- `<leader>ff` -- Find files
- `<leader>fg` -- Find grep
- `<leader>fb` -- Find buffers
- `<leader>fh` -- Find help
---

#### File tree mappings
- `<leader>tt` -- Toggle tree
- `<leader>tf` -- Focus on tree
- `<leader>tc` -- Collapse tree branches

- `a` -- Add file
- `r` -- Rename file
- `d` -- Delete file
- `<C-v>` -- Splitted windows
---

#### Completion mapping
- `<CR>`  -- Select suggestion
- `<C-j>` -- Next suggestion
- `<C-k>` -- Prev suggestion
- `<C-K>` -- Scroll docs up
- `<C-J>` -- Scroll docs down
- `<C-e>` -- Hide completions
---

#### Markdown preview
- `<leader>md` -- toggle Markdown preview in browser
---
