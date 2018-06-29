
[[ -f $HOME/.zshenv ]] && source $HOME/.zshenv

# Start x server on login
if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
	startx
fi
