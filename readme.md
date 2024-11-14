## Installing dependencies
Installing NVM and Node for coc.nvim.
```Bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source .bashrc
nvm install 20
node --version
```

Dependencies for Vim.
```Bash
sudo apt install -y \
git \
make \
clang \
libtool-bin \
npm
```

## Vim
Building Vim with "huge" features which include GUI, clipboard, and Python3:
```Bash
git clone https://github.com/vim/vim.git
cd vim
# make distclean
./configure --with-features=huge --enable-python3interp=yes 
make 
sudo make install
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

### coc-clangd and coc.nvim
Now that coc.nvim is installed through Vundle. coc.nvim dependencies can be installed by: 
```Bash
cd $HOME/.vim/bundle/coc.nvim
npm install
```
Set up clangd in Vim with `:CocInstall coc-clangd coc-json` followed by `:CocCommand clangd.install`.
Configure coc.nvim with `:CocConfig`.
```Json
{
  "clangd.path": "~/.config/coc/extensions/coc-clangd-data/install/18.1.3/clangd_18.1.3/bin/clangd",
  "clangd.compilationDatabaseCandidates": [".", "~/ws/build"],
  "clangd.fallbackFlags": ["-std=c++20"],
  "coc.preferences.formatOnSave": true,
  "inlayHint.enable": false
}
```

### coc-format
Clangd uses coc-format on the backend, hence coc-clangd is all needed at the frontend for formatting. As shown above, set `coc.preferences.formatOnSave` to `true`.

**Note**:
coc-format looks for `.clang-format` file for the formatting style by traversing down the directory tree. Place the `.clang-format` file in the root directory (e.g. `/.clang-format`) or home (e.g `~/.clang-format`) to set up the global style.

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
