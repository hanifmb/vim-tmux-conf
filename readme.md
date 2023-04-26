## GVim
For enabled clipboard:
```Bash
sudo apt install vim-gtk3
```

Installing vundle:
```Bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
Copy .vimrc to home then proceeds with `:PuginInstall` on vim

## tmux
Installing tmux:
```
sudo apt-get install tmux
```
Installing tmux plugin manager:
```Bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Copy `.tmux.conf` to home and reload tmux env.
```Bash
tmux source ~/.tmux.conf
```
Open tmux and hit `prefix` + <kbd>I</kbd> to install tmux plugin. `prefix` is by default <kbd>Ctrl</kbd> + <kbd>a</kbd>; note that <kbd>I</kbd> is capital.

### Tmux on terminal startup: add to .bashrc

```Bash
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
```

## [Screenshot]
For reference.
![Screenshot from 2023-03-25 08-53-26](https://user-images.githubusercontent.com/40484370/227704974-912e5eb2-4e91-4afe-a41a-1f3a958059e0.png)
