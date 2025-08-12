# dotfiles-macos

Personal dotfiles for macOS development environment, managed with [GNU Stow](https://www.gnu.org/software/stow/) for symlink management.

## Overview

This repository contains configuration files for various development tools and applications:

- **btop** - System monitor configuration
- **configstore** - Firebase tools configuration storage  
- **github-copilot** - GitHub Copilot extension settings
- **neofetch** - System info display configuration
- **nvim** - Neovim editor configuration (NvChad-based)
- **raycast** - Raycast launcher with extensions
- **skhd** - Simple hotkey daemon for window management
- **spicetify** - Spotify customization with marketplace
- **starship** - Cross-shell prompt configuration
- **yabai** - Tiling window manager for macOS

## Installation

This repository uses GNU Stow to create symlinks from the repository to your home directory.

### Prerequisites

Install GNU Stow:
```bash
brew install stow
```

### Setup

1. Clone this repository to your home directory:
```bash
git clone https://github.com/yourusername/dotfiles-macos.git ~/dotfiles
cd ~/dotfiles
```

2. Use Stow to create symlinks for individual applications:
```bash
# Install all configurations
stow */

# Or install specific configurations
stow nvim
stow starship
stow yabai
stow skhd
```

3. Remove configurations:
```bash
# Remove specific configuration
stow -D nvim

# Remove all configurations  
stow -D */
```

## Structure

Each directory represents a "package" that Stow can manage. The directory structure within each package mirrors where the files should be placed relative to your home directory, following the XDG Base Directory specification where applicable.
