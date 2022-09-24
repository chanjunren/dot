if status is-interactive
	# Commands to run in interactive sessions can go here
	
	# Init oh-my-posh theme
	eval "$(oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/jandedobbeleer.omp.json)"	
	
	# Aliases
	if [ -f $HOME/.config/fish/alias.fish ]
		source $HOME/.config/fish/alias.fish
	end
end
