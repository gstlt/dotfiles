# Include aliases and functions
for file in ~/.{aliases,functions,prompt}; do
    if [[ -r "$file" ]]; then
        source "$file"
    fi
done
unset file

# Autocorrect typos in path names when using `cd`
shopt -s cdspell
shopt -s dirspell

# Just type directory without the cd
shopt -s autocd

shopt -s histappend
shopt -s checkwinsize

# Show some colors ls
export LSCOLORS=cxfxcxdxbxegedabagacad
export LS_COLORS

# History: ignore duplicates, ignore commands beginning with a space
HISTCONTROL=ignoredups:ignorespace

# History size: there's no unlimited on mac :(
HISTSIZE=5000000

export EDITOR=vim
export GIT_EDITOR=vim
export LESS='-R'

# Custom path for other tools
export PATH="${PATH}:~/local/bin"

