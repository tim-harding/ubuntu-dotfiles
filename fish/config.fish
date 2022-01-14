if status is-interactive
	alias ls="exa --long --all --git --icons --header"
	alias smerge="/mnt/c/Program\ Files/Sublime\ Merge/smerge.exe"
	starship init fish | source
	set -Ux EDITOR nvim
end

fish_add_path /home/tim/personal/21/11/WSL2-Linux-Kernel/tools/perf
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/tim/.ghcup/bin # ghcup-env
