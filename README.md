<h1>
  <p align="center">
     <a href="https://neovim.io/">
       <img src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png" alt="Logo" height="100">
     </a>
  </p>
</h1>

This repository contains my custom config for [Neovim](https://neovim.io/).

## Requirements

- Neovim >= **0.9.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- a [Nerd Font](https://www.nerdfonts.com/)
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- [Silicon](https://github.com/Aloxaf/silicon.git) for amazing images of your code

## Installation

- Make a backup of your current Neovim files:

  ```shell
  mv ~/.config/nvim ~/.config/nvim.bak
  mv ~/.local/share/nvim ~/.local/share/nvim.bak
  ```

- Clone the starter

  ```shell
  git clone https://github.com/ndpm13/nvim-config.git ~/.config/nvim
  ```

## Screenshot

![nvim-neo-tree/neo-tree.nvim](https://files.catbox.moe/3wm9y5.jpg)
![folke/lazy.nvim](https://files.catbox.moe/34ch1k.jpg)

## Credits

This configuration uses [Lazy.nvim](https://github.com/folke/lazy.nvim), which is licensed under the [Apache 2.0 License](https://github.com/folke/lazy.nvim/blob/main/LICENSE). It also relies on the amazing Neovim plugin ecosystem (for a full list of plugins, see the [lazy-lock.json](./lazy-lock.json) file).
