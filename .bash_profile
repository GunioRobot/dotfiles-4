# ~/.bash_profile: executed by bash(1) for login shells.

# include ~/.bashrc if it exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

###############################################################################
# Set up PATH and other variables

# Put the MacPorts /opt/local paths ahead in PATH
PATH="/opt/local/bin:/opt/local/sbin:$PATH"
MANPATH="/opt/local/man:${HOME}/opt/local/man:${MANPATH}"

# Finally, prepend my ~/bin and ~/opt/local/bin dirs to the PATH
# and add ~/opt/local/lib to my library paths
PATH="${HOME}/bin:${HOME}/opt/local/bin:${PATH}"
LD_LIBRARY_PATH="${HOME}/opt/local/lib:${LD_LIBRARY_PATH}"
DYLD_LIBRARY_PATH="${HOME}/opt/local/lib:${DYLD_LIBRARY_PATH}"

###############################################################################
# Export variables

#export PS1='\u@\h:\w\$ '
export EDITOR='vim'
export PAGER='less -r'      # XXX: how does 'lesspipe' work here?

export LD_LIBRARY_PATH
export DYLD_LIBRARY_PATH
#export DYLD_FRAMEWORK_PATH

#export CLASSPATH
export MANPATH
export PATH

