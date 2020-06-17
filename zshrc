# Zsh config

# Requirements
# You need zgen and exa installed.

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then
	# specify plugins here
	zgen oh-my-zsh

	
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh custom/themes/custom1.zsh-theme
	zgen load zsh-users/zsh-autosuggestions

	# generate the init script from plugins above
	zgen save
fi

# Aliases
alias sls='/usr/bin/ls -lh --color=auto'; # Standard ls
alias ls='exa -lh'; # Better than ls

# Setup zsh-autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bold";

if test "$TMUX" = ""; then
	tmux && exit
fi
