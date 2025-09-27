# Dotfiles

This is my personal configuration file repository, containing configuration files for various development tools and terminals, designed to improve development efficiency and user experience.

## Directory Structure

- **debian**: Debian system related configurations
- **kitty**: [Kitty terminal](https://sw.kovidgoyal.net/kitty/) theme configuration files
- **software**: Configuration files for various software
  - **book**: Book templates
  - **clion**: JetBrains CLion configuration
  - **nvim**: [Neovim](https://neovim.io/) configuration files
  - **sublime-text-3**: Sublime Text 3 configuration
  - **vim**: Vim editor configuration
- **terminal**: Terminal related configurations
  - **tmux.conf**: [Tmux](https://github.com/tmux/tmux) configuration
  - **zshrc**: [Zsh](http://zsh.sourceforge.net/) configuration
  - **themes**: Terminal theme scripts

## Usage Instructions

### Neovim Configuration

Neovim's configuration files are located in the `software/nvim` directory, including the following:

- `init.lua`: Main configuration file
- `lua/options.lua`: Setting Neovim options
- `lua/colorscheme.lua`: Configuring color themes
- `lua/plugins.lua`: Plugin management

### Kitty Terminal Themes

Kitty terminal theme configuration files are located in the `kitty` directory, including multiple popular themes such as Monokai, Gruvbox, VSCode, etc.

### Terminal Theme Scripts

The `terminal/themes` directory contains multiple terminal theme scripts that allow easy switching between different themes. Each script defines color variables and calls the `apply_theme` function to apply the theme.

## Installation Guide

1. Clone the repository locally:
   ```bash
   git clone https://gitee.com/iyongliang/dotfiles.git
   ```

2. Copy or link configuration files to the appropriate locations as needed. For example, to use the Neovim configuration:
   ```bash
   ln -s /path/to/dotfiles/software/nvim ~/.config/nvim
   ```

3. For terminal theme scripts, you can directly run the scripts to apply themes:
   ```bash
   bash /path/to/dotfiles/terminal/themes/gruvbox-dark.sh
   ```

## Contribution Guidelines

Contributions of new configuration files or improvements to existing configurations are welcome. Please submit a Pull Request and ensure you follow the existing style.

## License

This project uses the MIT license. See the [LICENSE](LICENSE) file for details.
