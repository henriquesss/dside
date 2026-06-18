#!/usr/bin/env bash
#
# example.sh — placeholder entry point for the `dside` skill.
#
# Keep scripts deterministic, self-contained, and quiet on success. Claude calls
# these instead of inlining long commands, so a clear interface and good error
# messages matter. Replace this body with your real logic.
#
# Usage:
#   scripts/example.sh <arg>
#
set -euo pipefail

main() {
  if [[ $# -lt 1 ]]; then
    echo "usage: $(basename "$0") <arg>" >&2
    exit 64 # EX_USAGE
  fi

  local arg="$1"
  echo "dside: received '${arg}'"
}

main "$@"
