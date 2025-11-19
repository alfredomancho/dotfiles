# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# set DISPLAY
if [ "$(hostname)" = "BONE-GTX" ]; 
then
    export DISPLAY=$(ip route | grep default | awk '{print $3}'):0.0
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export PATH=$JAVA_HOME/bin:$PATH

# grep -rnH "string" *
# -r searches recursively in subdirectories
# -n shows line numbers
# -H ensures file names are shown, even for single files

# aliases
alias l='ls -al --color=auto'
alias ll='ls -al --color=auto'
#alias display='/usr/bin/eog'
alias dusort='du -s * |sort -n'
alias c='clear'
alias vi='vim'
alias acroread='explorer.exe'
alias view='vim -R'
#alias display='display -geometry 800x600+560+240'


#ln -s /usr/bin/python3.12 /usr/bin/python3
# User specific aliases and functions
