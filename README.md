# dotfiles

My macOS setup. Originally forked from [holman/dotfiles](https://github.com/holman/dotfiles) and trimmed down to what I use.

## Set up a new Mac

```sh
git clone https://github.com/Anifacted/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

`script/bootstrap` asks for your git name and email, symlinks every `*.symlink` file into `$HOME` (for example `zsh/zshrc.symlink` becomes `~/.zshrc`), then runs `bin/dot`. That installs Homebrew, everything in the `Brewfile`, and Oh My Zsh.

Afterwards, put machine-local secrets such as `NPM_TOKEN` in `~/.localrc`. `~/.zshrc` loads it, and it is never committed, because this repository is public.

Run `dot` at any time to update Homebrew and install anything new in the `Brewfile`.

## How it's organized

- **`topic/*.zsh`**: loaded into every shell. `path.zsh` files load first and `completion.zsh` files load last.
- **`topic/*.symlink`**: symlinked into `$HOME` by `script/bootstrap`.
- **`topic/install.sh`**: run by `script/install`.
- **`bin/`**: added to `$PATH`.
