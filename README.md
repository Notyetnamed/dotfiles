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

## PPA
i used the speed-ricer **[ppa](https://github.com/regolith-linux/speed-ricer)**
`sudo add-apt-repository -y ppa:kgilmer/speed-ricer`

## Install
after adding the ppa install:
#### APT
```sudo apt install i3-gaps polybar rofi dunst picom flameshot nordic paper-icon-theme fonts-source-code-pro curl```

#### i3lock-color
This adds an minimal blurred lockscreen  
**[i3lock-color](https://github.com/Raymo111/i3lock-color)**

#### Font Awesome
Used for rofi menus and more  
**[font-awesome 5](https://fontawesome.com/download)**

###### is this even needed?  
apply nordic widget theme, Source Code pro 12 and paper icon theme in lxappearance  
###### -----------------



## Symlink scripts
Create a folder to store symlinks. Make sure it is added to your $PATH!  
```mkdir ~/.local/bin```  
create the links  
```
ln -s ~/.config/rofi/scripts/power-menu.sh ~/bin/powermenu
ln -s ~/.config/rofi/scripts/prompt-menu.sh ~/bin/promptmenu
ln -s ~/.config/rofi/scripts/drun-menu.sh ~/bin/drunmenu
```

