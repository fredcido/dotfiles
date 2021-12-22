# My personal dotfiles

These files are my personal customization files that I use to personalize my Windows and/or Linux desktop experience.

There is a script `install.sh` that do the initial setup of all tools (**zsh, oh-my-zsh, powerlevel10k theme, oh-my-zsh plugins, brew and yadm**), and then applies the YADM at the end, which gets the customizations on your `~/`.

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

## Font
To enjoy this setting at its utmost performance, install Firacode from Nerd Fonts on Windows, and select `Firacode Nerd Font Retina` on Windows Terminal and on VSCode.

https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip

### **Windows Terminal**

![screenshot-03.png](./.dotfiles/screenshot-03.png "Font settings on Windows Terminal")

### **VSCode**

In the VSCode `settings.json` apply these settings to enable **`Firacode Nerd Font`** on the integrated terminal.

```json
    "terminal.integrated.shell.windows": "C:\\Windows\\System32\\bash.exe",
    "terminal.integrated.shellArgs.windows": ["-c", "zsh"],
    "terminal.integrated.fontFamily": "FuraCode Nerd Font Mono",
```

![screenshot-04.png](./.dotfiles/screenshot-04.png "VSCode Integrated Terminal with ZSH and Firacode Font")

## Windows Settings

To enforce some resource limitations on the WSL environment.

1 - Turn off all WSL instances such as docker-desktop

- `wsl --shutdown`

2 - Create/Edit the .wslconfig with:
- `notepad "%HOMEPATH%/.wslconfig"`

> Use the example on the file `.windows\.wslconfig`. More settings can be seen at the: [Official Documentation](https://docs.microsoft.com/en-us/windows/wsl/wsl-config#configure-global-options-with-wslconfig).
