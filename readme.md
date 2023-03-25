## GVim
For enabled clipboard:
```Bash
sudo apt install vim-gtk3
```

Installing vundle
```Bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
Copy .vimrc to home then proceeds with `:PuginInstall` on vim

## tmux
Installing tmux
```
sudo apt-get install tmux
```
Installing tmux plugin manager
```Bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Copy `.tmux.conf` to home and reload tmux env
```Bash
tmux source ~/.tmux.conf
```
Open tmux and hit `prefix` + <kbd>I</kbd> to install tmux plugin. `prefix` is by default <kbd>Ctrl</kbd> + <kbd>a</kbd>; note that <kbd>I</kbd> is capital.
