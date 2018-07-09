xdg-user-dirs-update --set DESKTOP $HOME/Downloads
xdg-user-dirs-update --set DOWNLOAD $HOME/Downloads
xdg-user-dirs-update --set TEMPLATES $HOME/Downloads
xdg-user-dirs-update --set DOCUMENTS $HOME/Downloads
xdg-user-dirs-update --set MUSIC $HOME/Downloads
xdg-user-dirs-update --set PICTURES $HOME/Downloads
xdg-user-dirs-update --set VIDEOS $HOME/Downloads
xdg-user-dirs-update --set PUBLICSHARE $HOME/Public
mkdir -p $HOME/Public
mkdir -p $HOME/Downloads

### bash : Moving existing files
mkdir -p $XDG_CONFIG_HOME/bash
for file in ~/.bash*;do  
    dest=${XDG_CONFIG_HOME}/bash/$(basename $file|cut -d\. -f2) 
    mv -i "$file" "$dest" # don't overwrite without permission
done

### bash : Sourcing and setting variables
sudo sh -c 'cat >>/etc/profile.d/bash_in_xdg_config_home.sh <<CONF
# Make bash follow the XDG_CONFIG_HOME convention
if [ -d "\$XDG_CONFIG_HOME/bash" ] &&  [ "\$0" = "bash" ]
then
    . "\${XDG_CONFIG_HOME}/bash/bash_profile"
    . "\${XDG_CONFIG_HOME}/bash/bashrc"
    HISTFILE="\${XDG_CONFIG_HOME}/bash/bash_history"
fi
CONF
'

sudo sh -c 'cat >>/etc/bash.bash_logout <<CONF
if [ -s "\${XDG_CONFIG_HOME}/bash/bash_logout" ]
then
    . "\${XDG_CONFIG_HOME}/bash/bash_logout"
fi
CONF
'

### zsh : System wide configuration (using xdg directories)
sudo sh -c 'cat >>/etc/zshenv <<CONF
if [[ -z "\$XDG_CONFIG_HOME" ]]
then
        export XDG_CONFIG_HOME="\$HOME/.config"
fi

if [[ -d "\$XDG_CONFIG_HOME/zsh" ]]
then
        export ZDOTDIR="\$XDG_CONFIG_HOME/zsh"
fi
CONF
'
