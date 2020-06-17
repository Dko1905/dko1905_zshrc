# Zsh config

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then
	# specify plugins here
	zgen oh-my-zsh

	
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh themes/arrow
	zgen load desyncr/auto-ls
	zgen load marlonrichert/zsh-autocomplete

	# generate the init script from plugins above
	zgen save
fi


