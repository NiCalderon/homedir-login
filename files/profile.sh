# Add local bin directory to path
if [ -d "$HOME/local/bin" ]; then
	PATH="$HOME/local/bin:$PATH"
fi

# --no-init disables clearing the screen after exiting
# --RAW-CONTROL-CHARS allows displaying colors
export LESS='--no-init --RAW-CONTROL-CHARS'

# Set default editor
export EDITOR=vim

