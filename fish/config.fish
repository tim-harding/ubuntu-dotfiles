# Note: wslview to open files in the default application
if status is-interactive
	alias ls="exa --long --all --git --icons --header --no-permissions --no-user --time-style=long-iso --group-directories-first --level=2"
	alias smerge="/mnt/c/Program\ Files/Sublime\ Merge/smerge.exe"
	starship init fish | source
	set -Ux EDITOR nvim
	set fish_greeting
	fish_add_path /mnt/c/Windows
	fish_add_path ~/personal/22/04/tex_creator
	fish_add_path /home/linuxbrew/.linuxbrew/bin
	fish_add_path ~/miscellaneous/software/zig-linux-x86_64-0.10.0
end

fish_add_path /home/tim/personal/21/11/WSL2-Linux-Kernel/tools/perf
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/tim/.ghcup/bin # ghcup-env

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/tim/miscellaneous/google-cloud-sdk/path.fish.inc' ]; . '/home/tim/miscellaneous/google-cloud-sdk/path.fish.inc'; end
