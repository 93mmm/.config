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

- Tab width 2
- Swapfile disabled
- Using relative numbers
- Leader (<leader>) - space
- Yanking to clipboard
- New splits open on the right (bottom) side
---

#### File tree mappings
- `<leader>to` -- Toggle tree

- `a` -- Add file
- `H` -- Hide files
- `r` -- Rename file
- `d` -- Delete file
- `<C-v>` -- Splitted windows
---

#### Telescope
- `<leader>ff` -- Find files
- `<leader>fg` -- Find grep
- `<leader>fb` -- Find buffers
- `<leader>fh` -- Find help
---

#### Splits and tabs
- `<leader>sv` -- Vertical split window
- `<leader>sh` -- Horizontal split window
<br>

- `<leader>tn` -- Tab New
- `<leader>tc` -- Tab Close
- `<leader>tt` -- Tab Terminal
- `<Esc>`      -- Enter normal mode in Terminal
<br>

- `g[number]` -- Switch to next window
<br>

- `gh` -- Switch to left splitted window
- `gj` -- Switch to bottom splitted window
- `gk` -- Switch to top splitted window
- `gl` -- Switch to right splitted window
<br>
---

#### Moving
- `vK` -- Move line up
- `vJ` -- Move line down 
- `<C-k>` -- Up for a half of page
- `<C-j>` -- Down for a half of page
---

#### Buffers
- `<leader>bc` -- Deletes current window
- `<leader>po` + `<letter>` -- Pick window to open
- `<leader>pc` + `<letter>` -- Pick window to close
- `<C-H>` -- Move buffer left
- `<C-L>` -- Move buffer right
- `H` -- Move to left buffer
- `L` -- Move to right buffer
---


#### Markdown preview
- `<leader>md` -- toggle Markdown preview in browser (Works only on attached md file)
    ---

#### Completion mapping
- `<CR>`  -- Select suggestion
- `<C-j>` -- Next suggestion
- `<C-k>` -- Prev suggestion
- `<C-K>` -- Scroll docs up
- `<C-J>` -- Scroll docs down
- `<C-e>` -- Hide completions
---

