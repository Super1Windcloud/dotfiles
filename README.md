# dotfiles

Personal system configuration tracked in a Git repository.

## Layout

Files are stored under `home/` so they can be applied onto `$HOME` with a symlink manager such as GNU Stow.

## Included

- Shell: `~/.zshrc`, `~/.bashrc`, `~/.bash_profile`, `~/.profile`
- Git: `~/.gitconfig`
- NPM prefix: `~/.npmrc`
- Terminal utilities: `~/.config/fish`, `~/.config/htop`, `~/.config/neofetch`

## Excluded

Secrets, SSH keys, token-bearing app configs, editor caches, and machine-specific state are intentionally left out.

## Apply

```bash
cd ~/dotfiles
stow home
```
