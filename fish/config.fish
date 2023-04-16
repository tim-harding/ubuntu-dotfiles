# Note: wslview to open files in the default application
if status is-interactive
	set -Ux EDITOR nvim
	set fish_greeting

	abbr gs git switch
	abbr ga git add .
	abbr gc git commit

	alias ls="exa --long --all --git --icons --header --no-permissions --no-user --time-style=long-iso --group-directories-first --level=2"
	alias smerge="/mnt/c/Program\ Files/Sublime\ Merge/smerge.exe"
	alias explorer="/mnt/c/Windows/explorer.exe"
	alias tex_creator="~/personal/22/04/tex_creator/tex_init.fish"

	fish_add_path /home/linuxbrew/.linuxbrew/bin
	fish_add_path ~/miscellaneous/software/zig-linux-x86_64-0.10.0
	fish_add_path /opt/riscv/bin

	set --global tide_right_prompt_items time newline cmd_duration 
end

# Updates PATH for the Google Cloud SDK.
if [ -f '/home/tim/miscellaneous/google-cloud-sdk/path.fish.inc' ]; . '/home/tim/miscellaneous/google-cloud-sdk/path.fish.inc'; end
