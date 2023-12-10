# My NViM config

## Removing old files
```bash
mv ~/.config/nvim ~/.config/old-nvim-config 
```

## Installation
```bash
git clone https://93mmm/nvim ~/.config/nvim
```

# Config review

#### Telescope
`<leader>ff` -- find files
`<leader>fg` -- find grep
`<leader>fb` -- find buffers
`<leader>fh` -- find help

#### Completion mapping
`<Tab>` (also `<CR>`) -- Select suggestion
`<C-j>` -- Next suggestion
`<C-k>` -- Prev suggestion

#### File tree mappings
`<leader>tt` -- Toggle tree
`<leader>tf` -- Focus on tree
`<leader>tc` -- Collapse tree branches

`a` -- Add file
`r` -- Rename file
`d` -- Delete file

#### Splits and windows
`<leader>sv` -- Vertical split window
`<leader>sh` -- Horizontal split window

`<leader>wn` -- Window New
`<leader>wc` -- Window Close
`<leader>wt` -- Window Terminal

`<leader>[number]` -- Switch to next window

#### NViM remaps
`vK` -- move line up
`vJ` -- move line down 
`<C-k>` -- Up for a half of page
`<C-j>` -- Down for a half of page

