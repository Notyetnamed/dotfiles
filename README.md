# dotfiles 

## How to manage repo
#### Setting up a new dotfiles project
Create a .dotfiles folder to keep track of repo  
```git init --bare $HOME/.dotfiles```

Hide untracked files  
```dotfiles config --local status.showUntrackedFiles no```

Add alias to .zshrc to persist it  
```echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc```

Source zsh config  
```source $HOME/.zshrc```

#### Usage
This lets you do stuff like  
```
dotfiles status
dotfiles add .config
dotfiles commit -m "Add cofig"
dotfiles push
```
##### DO NOT USE ```dotfiles add .``` As this will add every single file in your $HOME

#### Setting up on a new system
Clone this repo  
```git clone --bare https://github.com/Notyetnamed/dotfiles.git $HOME/.dotfiles```

Add alias to current shell scope  
```alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'```

checkout  
```dotfiles checkout```

[Source](https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b)




## Installation

### window manager
add regolith ppa
´´´sudo add-apt-repository -y ppa:regolith-linux/stable´´´
 install i3-gaps
 ´´´sudo apt install i3-gaps´´´
´´´
sudo apt update 
sudo apt upgrade
sudo apt dist-upgrade
´´´ 

### Configure upgrader
Configure the release upgrader. 
Open and edit the /etc/update-manager/release-upgrades file and ensure that the Prompt variable is set to normal.

```sudo do-release-upgrade```

### Installation cool stuff
 only for ubuntu 20.10 or later!
```sudo apt install polybar rofi picom blueman autorandr flameshot```

TODO: make sure we got everything.
TODO: lightDM guide


#### Fonts
Used for rofi menus and more
**[font-awesome 5](https://fontawesome.com/download)**

Main font 
**[Roboto Light](https://fonts.google.com/specimen/Roboto)**

Mono-font, used for terminals ++
**[Roboto Mono Light](https://fonts.google.com/specimen/Roboto+Mono)**

## Symlink scripts
Create a folder to store symlinks. Make sure it is added to your $PATH!  
```mkdir ~/.local/bin```  
create the links  
```
ln -s ~/.config/rofi/scripts/power-menu.sh ~/bin/powermenu
ln -s ~/.config/rofi/scripts/prompt-menu.sh ~/bin/promptmenu
ln -s ~/.config/rofi/scripts/drun-menu.sh ~/bin/drunmenu
```

