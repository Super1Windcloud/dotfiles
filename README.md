# dotfiles

Personal system configuration tracked in a Git repository.

## Layout

Files are stored under OS-specific directories so the target system is obvious at a glance. Each directory maps onto `$HOME` and can be applied with a symlink manager such as GNU Stow.

- `archlinux/`: Arch Linux workstation configuration
- `ubuntu/`: Ubuntu 24.04 / WSL configuration

## Included

- Shell: `~/.zshrc`, `~/.bashrc`, `~/.bash_profile`, `~/.profile`
- Git: `~/.gitconfig`
- Terminal utilities: `~/.config/fish`, `~/.config/htop`, `~/.config/neofetch`, `~/.config/superfile`
- Tooling: `~/.config/mise`, `~/.config/paru`, `~/.config/yay`, `~/.config/act`
- Desktop preferences: `~/.config/fsearch`, `~/.config/mimeapps.list`
- Package manifests:
  - Arch Linux: explicit packages, AUR packages, Homebrew formulae, Homebrew casks
  - Ubuntu: manual APT packages, Homebrew formulae, Homebrew casks
- System metadata for Ubuntu exports: `/etc/os-release`, `uname -a`

## Excluded

Secrets, SSH keys, token-bearing app configs, editor caches, and machine-specific state are intentionally left out.

## Apply

```bash
cd ~/dotfiles
stow archlinux
```

Ubuntu:

```bash
cd ~/dotfiles
stow ubuntu
```

## Package Restore

Arch Linux explicit package list:

```bash
sudo pacman -S --needed - < archlinux/packages/pacman-explicit.txt
```

AUR package list:

```bash
paru -S --needed - < archlinux/packages/aur-explicit.txt
```

Homebrew formulae:

```bash
brew install $(< archlinux/packages/brew-formulae.txt)
```

Homebrew casks:

```bash
brew install --cask $(< archlinux/packages/brew-casks.txt)
```

Ubuntu manual APT package list:

```bash
sudo apt install $(< ubuntu/packages/apt-manual.txt)
```

Ubuntu Homebrew formulae:

```bash
brew install $(< ubuntu/packages/brew-formulae.txt)
```

Ubuntu Homebrew casks:

```bash
brew install --cask $(< ubuntu/packages/brew-casks.txt)
```
