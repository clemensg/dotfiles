# .zshrc
# Clemens Gruber, 2012
#

# History
HISTFILE=~/.zsh/histfile
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

# Key bindings
bindkey -e
#  History immer von aktuellem Befehl aus durchsuchen
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Globbing / Completion
setopt extendedglob
setopt completealiases
#  Cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
#  Fuzzy Matching
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle -e ':completion:*:approximate:*' \
        max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
zstyle ':completion:*:functions' ignored-patterns '_*'
#  arrow-key menu
zstyle ':completion:*' menu select
#  ps
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
#  remove trailing slashes in completion
zstyle ':completion:*' squeeze-slashes true
#  ignore parent dir
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# Correction
setopt correct_all
alias man='nocorrect man'
alias mv='nocorrect mv'
alias mkdir='nocorrect mkdir'

# Aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

# Prompt
setopt prompt_subst
PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[blue]%}%(!.%1~.%~) %#%{$reset_color%} '

# Misc
setopt print_exit_value
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
alias ls='ls -G'
export PAGER=less

# sudo (via ALT+s)
run-with-sudo() {
  if [[ -z $LBUFFER ]]; then
    LBUFFER="sudo !!";
  else
    LBUFFER="sudo $LBUFFER";
  fi
};
zle -N run-with-sudo;
bindkey '\es' run-with-sudo
