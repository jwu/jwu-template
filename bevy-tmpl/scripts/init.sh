#!/bin/sh
set -eu

repo_root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$repo_root"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "error: initialize a Git repository before running this script" >&2
    exit 1
fi

rustup component add rustfmt clippy

if ! command -v cog >/dev/null 2>&1; then
    cargo install cocogitto --locked
fi

git config --local core.hooksPath .githooks

echo "✓ Development tools and Git hooks are ready"
