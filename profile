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

# pyenv is my preferred method for dealing with python installations
# think: cabal/rustup/rubyenv but for python
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH

# shim local user pythons
eval "$(pyenv init -)"

# CUDA themed environment variables
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/lib64
export CUDA_HOME=/opt/cuda

# Adding in my custom keybindings
bindkey "\e[3~" delete-char
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line

#-- ZSH OPTIONS ----------------------------------------------------------------
# <3 autopushd <3
setopt autopushd
# make my cursor a vertial bar
# echo -e "\033[6 q \r\r"

#-- ALIASES --------------------------------------------------------------------
# tty-clock alias given a [[1 2],[1 3]] setup with clock on 2 or 3
alias clock="tty-clock -cn -C 4 -D"

# emacsclient alias because I'm lazy
alias nano="emacs -nw"
alias ec="emacsclient"
alias ls="ls --color=auto"

# git pretty log
git config --global alias.plog "log --color --graph \
	       --pretty=format:'%C(bold white)%h%Creset \
           -%C(blue)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\
           --abbrev-commit"

# too much time on mac, so need me a pbcopy
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# clean up orphaned packages
alias orphans='sudo pacman -Rncs $(yaourt -Qtdq)'

#-- VARIABLES ------------------------------------------------------------------
setxkbmap gb
