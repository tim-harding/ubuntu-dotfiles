if status is-interactive
	alias ls="exa -la"

	starship init fish | source

	set -Ux EDITOR nvim
end
