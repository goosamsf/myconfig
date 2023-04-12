autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats ' '%b
#echo "\ue0a0" will give you that icon.
precmd() { 
    vcs_info 
}

setopt prompt_subst
PROMPT='%F{011}> %f %U%F{yellow}%~%f%u %F{blue}${vcs_info_msg_0_} %f$ '
#PROMPT="%F{011}> %f %U%F{yellow}%~%f%u %F{blue}${vcs_info_msg_0_}$%f "

#PROMPT="%F{011}> %f%U%F{yellow}%f%u%F{blue}$%f "
RPROMPT="%F{241}%T%f"



# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

#Use vim keys in tab complete meunu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

alias ls='ls --color'
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export JAVA_HOME=$(/usr/libexec/java_home)
export JUNIT_HOME="$/Users/jun/JUNIT"
export PATH="$PATH:$JUNIT_HOME"
export CLASSPATH="$CLASSPATH:$JUNIT_HOME/junit-4.13.2.jar:$JUNIT_HOME/hamcrest-core-1.3.jar"

source /Users/jun/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source /Users/jun/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
