# Run every recipe inside `nix develop` when nix and flake.nix are available,
# otherwise run commands directly. NOTE: keep the {{run}} prefix on every
# new recipe line, or the nix/non-nix behavior will silently diverge.
has_nix := if shell('command -v nix >/dev/null 2>&1 && [ -f flake.nix ] && echo 1 || echo 0') == "1" {
    "true"
} else {
    "false"
}

run := if has_nix == "true" { "nix develop --command" } else { "" }

default: install build serve update check outdated

install:
	{{run}} uv sync --group dev

build:
	{{run}} uv run python -m exocortex
	{{run}} zola build

serve:
	{{run}} zola serve

update:
	{{run}} uv lock --upgrade

check:
	{{run}} uv run ruff format --check .
	{{run}} uv audit
	{{run}} uv run ruff check --select I .
	{{run}} uv run ruff check .
	{{run}} uv run ty check exocortex/

outdated:
	{{run}} uv tree --outdated --depth 1

package:
	{{run}} rm -rf docs && mkdir -p docs && zip -r docs/site.zip public
