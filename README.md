# My personal dotfiles

This repo keep my personal customization files that I use to personalize my terminal experience.

I got this idea from this video <https://www.youtube.com/watch?v=AK2JE2YsKto>, after that, I got a lot of more customizations.

> This can be applied on Linux, Mac or Windows (WSL).

## Install script

This script [.install.sh](.install.sh) can be used do the initial setup the tools (**zsh, oh-my-zsh, powerlevel10k theme, oh-my-zsh plugins, brew packages and yadm**), and then applies the YADM at the end, which gets the current customizations on your home directory `~/`.

You can run the script directly with the following command:

```bash
curl -s -L https://raw.githubusercontent.com/zenatuz/dotfiles/main/.install.sh | bash
```

In the end, run the command to define ZSH as the default shell:

```bash
chsh -s $(which zsh)
```

## Prompt

This is how your prompt will look like after cloning the settings with YADM.

- **Home directory**

![screenshot-01.png](./.dotfiles/screenshot-01.png "Home Directory")

- **Some project with git**

![screenshot-02.png](./.dotfiles/screenshot-02.png "Project with git")

> To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

## Getting the DOTFILEs, only

If you only want to get the files without installing anything new, just use YADM in your home directory.

```bash
cd ~
yadm clone git@github.com:zenatuz/dotfiles.git
```

## Brewfile

There is a way to easy install packages for both OSX and Linux using `brew` and `brewfile`, it's described on this link <https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f>

### Keep brewfile updated
Run this command to update the brew file based on what you are running.

```bash
brew bundle dump --file=.brewfile --force
```

### Install all the packages listed on the brewfile

```bash
 brew bundle install --file=.brewfile
```

## Font

To enjoy this setting at its utmost performance, install **Firacode** Font on your OS, and select `Firacode Nerd Font Retina` on your Terminal and Code Editor.

> The font is already installed with brew for OSX. This install step is necessary only for Windows/WSL/Linux
> More info about Firacode font can be found on the repo: <https://github.com/tonsky/FiraCode>

### Windows

#### Chocolatey

#### Manual

Download this file, extract and install the font https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip


**Windows with powershell**

```powershell
choco install firacode
```

**MacOS with brew**

```brew
brew install --cask "font-fira-code-nerd-font"
```

### **Windows Terminal**

On the terminal settings, click on the terminal you want to change the font (powershell/ubuntu/git bash, etc), go to **appearance**, then **Font face** and select `Fira Code`.

![screenshot-03.png](./.dotfiles/screenshot-03.png "Font settings on Windows Terminal")

### **VSCode**

In the VSCode `settings.json` apply these settings to enable **`Firacode Font`** on the integrated terminal.

```json
    "terminal.integrated.fontFamily": "Fira Code",
```

![screenshot-04.png](./.dotfiles/screenshot-04.png "VSCode Integrated Terminal with ZSH and Firacode Font")

## WSL Additional Settings

To enforce some resource limitations on the WSL environment.

1 - Turn off all WSL instances such as docker-desktop

`wsl --shutdown`

2 - Create/Edit the `.wslconfig` file with this content:

`notepad "%HOMEPATH%/.wslconfig"`

```ini
[wsl2]
memory=4GB   # Limits VM memory in WSL 2 up to 4GB
processors=4 # Makes the WSL 2 VM use two virtual processors
```

More settings can be seen at the: [Official Documentation](https://docs.microsoft.com/en-us/windows/wsl/wsl-config#configure-global-options-with-wslconfig).
