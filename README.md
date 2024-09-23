# TimotejKovacka dotfiles

## Prerequisites

To use these dotfiles, you'll need the following installed on your system:

1. [zsh](https://www.zsh.org/): This is the shell we'll be using. If you need to change your default shell to zsh, run:

```sh
chsh -s /bin/zsh
```

2. [Oh My Zsh](https://ohmyz.sh/): This is a popular framework for managing your `zsh` configuration. To [install](https://ohmyz.sh/#install) it, run:

```
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

3. [Powerlevel10k](https://github.com/romkatv/powerlevel10k): This is the theme we'll be using to customize the appearance of our zsh prompt. To use it, you'll need to download the following font files and install them on your system:
  - [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
  - [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
  - [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
  - [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)\

> [!IMPORTANT]  
> If you're using WSL (Windows Subsystem for Linux), these fonts need to be installed on your host Windows machine, not inside the WSL environment.

## Installation

1. Clone the repository with the --recursive flag to pull in all submodules:

```sh
git clone https://github.com/TimotejKovacka/dotfiles.git
```

2. Run the bootstrap script to set up Git and symlink all the dotfiles:

```sh
script/bootstrap
```

3. Next you will need to install the `powerlevel10k` as follows:

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

This should install the `powerlevel10k` in untracked directory `themes/powerlevel10k` inside this cloned repo.

4. Restart terminal session or source `.zshrc`

### Using Custom Fonts

#### WSL

To use custom fonts inside your `WSL` (Windows Subsystem for Linux) terminal, follow these steps:
1. Open a WSL Terminal
    - Launch the WSL terminal on your Windows machine.
2. Open Terminal Properties
    - Right-click on the WSL terminal icon and select "Properties".
3. Navigate to the Fonts Tab
    - In the Properties window, click on the "Fonts" tab.
4. Select the MesloGS NF Font
    - In the "Font" dropdown, select the "MesloGS NF" font.
    - This font must be installed on your Windows machine for this step to work.

Once you've completed these steps, your WSL terminal should now use the custom `MesloGS NF` font.

#### VS Code

If you want the integrated terminal to share the same font that `powerlevel10k` uses please do the following:

1. Open Settings in Visual Studio Code.
    - On PC: press `Ctrl + ,` or click `File` → `Preferences` → `Settings`
    - On Mac: press `⌘ + ,` or click `Code` → `Preferences` → `Settings`
2. Enter `terminal.integrated.fontFamily` in the search box at the top of Settings tab and set the value below to `MesloLGS NF`.