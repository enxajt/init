#  less
export LESSHISTFILE="${XDG_CONFIG_HOME}/less/history"
export LESSKEY="${XDG_CONFIG_HOME}/less/keys"


# Setting bash to use $XDG_CONFIG_HOME/bash 

### Moving existing files
mkdir -p $XDG_CONFIG_HOME/bash
for file in ~/.bash*;do  
    dest=${XDG_CONFIG_HOME}/bash/$(basename $file|cut -d\. -f2) 
    mv -i "$file" "$dest" # don't overwrite without permission
done

### Sourcing and setting variables
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

# Setting zsh
## System wide configuration (using xdg directories)
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
