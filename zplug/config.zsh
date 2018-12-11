# -* karetsu *- #
# ZPLUG DO THA TING

# Use the package as a command
# And accept glob patterns (e.g., brace, wildcard, ...)
zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"
zplug mafredri/zsh-async, from:github

# themes
zplug subnixr/minimal, use:minimal.zsh, from:github, as:theme


# zplug to manage zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# use the ohmyzsh things
zplug "plugins/composer", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/zsh_reload", from:oh-my-zsh
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "tarrasch/zsh-functional", lazy:true
zplug "ehamberg/zsh-cabal-completion", lazy:true
zplug "zsh-users/zsh-syntax-highlighting", defer:3

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load #  --verbose : disabled, I actually prefer a silent load
