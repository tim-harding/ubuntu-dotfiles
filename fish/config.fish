if status is-interactive
	alias ls="exa -la"
	starship init fish | source
	set -Ux EDITOR nvim
end

fish_add_path /home/tim/personal/21/11/WSL2-Linux-Kernel/tools/perf
