# shell_scripts
Convenience shell scripts for working in \*nix environments

## Description
Scripts can be placed in an appropriate directory and their location appended to your $PATH variable.

### git-exclude.sh
Want to exclude from tracking and versioning files inappropriate for the gitignore mechanism? Too lazy to individually edit the file? Invoke this script in your top-level work directory and enter a whitespace separated list of files or patterns when prompted. Example use:

	$git-exclude.sh
	>Prompt
	$*.ko *.o *.class
