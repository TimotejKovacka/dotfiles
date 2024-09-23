# TimotejKovacka dotfiles

## Requirements

- [zsh](https://www.zsh.org/) as your shell, if you need to change to it:

```sh
chsh -s /bin/zsh
```

- [oh-my-zsh](https://ohmyz.sh/) as your framework of choice for `zsh`, for more information about install read [here](https://ohmyz.sh/#install)

```
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

- I'm using [powerlevel10k](https://github.com/romkatv/powerlevel10k) as theme of my choosing for customizing zsh looks. This requires a manual download of these fonts on your system to work across all your devices.

  - [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
  - [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
  - [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
  - [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

## Installation

1. Clone the repo with:

```sh
git clone --recursive https://github.com/TimotejKovacka/dotfiles.git
```

2. Run bootstrap

The bootstrap script will setup git & symlink all of our symlink files included in this repo

```sh
script/bootstrap
```

### VS Code

If you want the integrated terminal to share the same font that `powerlevel10k` uses please do the following:

1. Open Settings in Visual Studio Code.
    - On PC: press `Ctrl + ,` or click `File` → `Preferences` → `Settings`
    - On Mac: press `⌘ + ,` or click `Code` → `Preferences` → `Settings`
2. Enter `terminal.integrated.fontFamily` in the search box at the top of Settings tab and set the value below to `MesloLGS NF`.