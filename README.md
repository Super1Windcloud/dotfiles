# dotfiles

Personal system configuration tracked in a Git repository.

## Layout

Files are stored under `archlinux/` so the target system is obvious at a glance. The directory maps onto `$HOME` and can be applied with a symlink manager such as GNU Stow.

## Included

- Shell: `~/.zshrc`, `~/.bashrc`, `~/.bash_profile`, `~/.profile`
- Git: `~/.gitconfig`
- NPM prefix: `~/.npmrc`
- Terminal utilities: `~/.config/fish`, `~/.config/htop`, `~/.config/neofetch`, `~/.config/superfile`
- Tooling: `~/.config/mise`, `~/.config/paru`, `~/.config/yay`, `~/.config/act`
- Desktop preferences: `~/.config/fsearch`, `~/.config/mimeapps.list`

## Excluded

Secrets, SSH keys, token-bearing app configs, editor caches, and machine-specific state are intentionally left out.

## Apply

```bash
cd ~/dotfiles
stow archlinux
```
