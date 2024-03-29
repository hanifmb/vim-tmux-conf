## GVim
For enabled clipboard:
```Bash
sudo apt install vim-gtk3
```

Installing vundle:
```Bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Clone this repo and copy .vimrc and .tmux.conf to home:
```Bash
git clone https://github.com/hanifmb/vim-tmux-conf.git
cp vim-tmux-conf/.tmux.conf vim-tmux-conf/.vimrc .
```

proceeds with `:PluginInstall` on vim.

## Tmux
Installing tmux:
```
sudo apt-get install tmux
```
Installing tmux plugin manager:
```Bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Verity that `.tmux.conf` is at home and reload tmux env.
```Bash
tmux
tmux source ~/.tmux.conf
```
Open tmux and hit `prefix` + <kbd>I</kbd> to install tmux plugin. `prefix` is by default <kbd>Ctrl</kbd> + <kbd>a</kbd>; note that <kbd>I</kbd> is capital.

At this point, tmux might look weird due to missing symbol. Install Powerline fonts:

```Bash
sudo apt-get install fonts-powerline
```

## Terminal
Change background color to `#282c34`
![change-bg-color](https://github.com/hanifmb/vim-tmux-conf/assets/40484370/3d704c60-34f8-4a4d-bc92-79e6a66d5992)

### Tmux on terminal startup: add to .bashrc

```Bash
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
```

## [Screenshot]
For reference.
![Screenshot from 2023-03-25 08-53-26](https://user-images.githubusercontent.com/40484370/227704974-912e5eb2-4e91-4afe-a41a-1f3a958059e0.png)
