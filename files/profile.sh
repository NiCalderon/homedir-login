# Add local bin directory to path
if [ -d "$HOME/local/bin" ]; then
	export PATH="$HOME/local/bin:$PATH"
fi

# --no-init disables clearing the screen after exiting
# --RAW-CONTROL-CHARS allows displaying colors
export LESS='--no-init --RAW-CONTROL-CHARS'

# Set default editor
export EDITOR=vim


# Source all file in the .profile.d directory
for profile in ${HOME}/.profile.d/*;
do
	# Handle empty directory case, where globbing expands to itself
	[ -e "$profile" ] || continue

	. "$profile"
done
