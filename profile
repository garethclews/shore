#-- SYSTEM OPTIONS -------------------------------------------------------------
# Make sure my default path is set correctly
export PATH=/usr/bin/core_perl:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
# Add CUDA
export PATH=$PATH:/opt/cuda/bin
## NOTE: we do it this way round so that gcc-5 is deprecated

# Set the local stuff in case its not in the rest of the path
export PATH=$PATH:/home/karetsu/.local/bin
# Add cabal
export PATH=$PATH:/home/karetsu/.cabal/bin

# Setting locale, just in case its not set in the million other places...
export LANG=en_GB.UTF-8

# Adding an editor
export VISUAL="emacs -nw"


#-- ZSH OPTIONS ----------------------------------------------------------------
# <3 autopushd <3
setopt autopushd
# make my cursor a vertial bar
# echo -e "\033[6 q \r\r"

#-- ALIASES --------------------------------------------------------------------
# tty-clock alias given a [[1 2],[1 3]] setup with clock on 2 or 3
alias clock="tty-clock -cn -C 4 -D"

# a pip upgrading line
# alias pyup.2="pip2 install --upgrade -r <( pip2 freeze )"
alias uppy="pip3 install --upgrade -r <( pip3 freeze )"

# emacsclient alias because I'm lazy
alias nano="emacs -nw"
alias ec="emacsclient"

# git pretty log
git config --global alias.plog "log --color --graph \
	   --pretty=format:'%C(bold white)%h%Creset \
           -%C(blue)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\
           --abbrev-commit"

# nautilus so it doesn't be naughty
alias nautilus="nautilus --no-desktop"

# too much time on mac, so need me a pbcopy
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

#-- VARIABLES ------------------------------------------------------------------
