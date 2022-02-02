# My dotfiles

I've included a zsh script that will create the necessary symlinks for these dotfiles. Simply run the following command:

`zsh ~/dotfiles/symlinks.zsh`

If you needed to, you can create the symlinks manually like so:

`ln -s ~/path/to/dotfile ~/.dotfile`

---

## Dotfiles

- **.gitconfig**: Sets up user and alias. [Learn more...](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
- **.hushlogin**: Removes the "Last login" string every time you open a new Terminal window.
- **.macos**: Configures macOS with my preferences
- **.zshrc**: Configures zsh environment.