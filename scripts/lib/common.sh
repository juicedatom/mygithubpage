# shellcheck shell=bash
#
# Shared helpers for the scripts in scripts/. Source it, don't run it:
#
#   source "$(dirname "$0")/lib/common.sh"
#
# Platform-specific bits live in scripts/mac/env.sh and scripts/linux/env.sh
# and are pulled in automatically by load_platform_env below.

set -euo pipefail

# ---------------------------------------------------------------- paths ----

# Repo root, regardless of where the script was invoked from.
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
SCRIPTS_DIR="$REPO_ROOT/scripts"
export REPO_ROOT SCRIPTS_DIR

cd "$REPO_ROOT"

# ------------------------------------------------------------- logging ----

if [ -t 1 ] && [ -z "${NO_COLOR:-}" ]; then
  C_RESET=$'\033[0m'; C_BOLD=$'\033[1m'; C_DIM=$'\033[2m'
  C_RED=$'\033[31m'; C_GREEN=$'\033[32m'; C_YELLOW=$'\033[33m'; C_BLUE=$'\033[34m'
else
  C_RESET=''; C_BOLD=''; C_DIM=''; C_RED=''; C_GREEN=''; C_YELLOW=''; C_BLUE=''
fi

info()  { printf '%s==>%s %s\n' "$C_BLUE$C_BOLD" "$C_RESET" "$*"; }
ok()    { printf '%s  ok%s  %s\n' "$C_GREEN" "$C_RESET" "$*"; }
warn()  { printf '%swarn%s  %s\n' "$C_YELLOW" "$C_RESET" "$*" >&2; }
fail()  { printf '%sfail%s  %s\n' "$C_RED" "$C_RESET" "$*" >&2; }
dim()   { printf '%s%s%s\n' "$C_DIM" "$*" "$C_RESET"; }
die()   { fail "$*"; exit 1; }

# ------------------------------------------------------------ platform ----

# Echoes "mac" or "linux"; dies on anything else.
platform() {
  case "$(uname -s)" in
    Darwin) echo mac ;;
    Linux)  echo linux ;;
    *)      die "unsupported platform: $(uname -s) (this repo ships scripts/mac and scripts/linux)" ;;
  esac
}

# Sources scripts/<platform>/env.sh, which is responsible for putting a usable
# ruby on PATH and setting OPEN_CMD.
load_platform_env() {
  local p env_file
  p="$(platform)"
  env_file="$SCRIPTS_DIR/$p/env.sh"
  [ -f "$env_file" ] || die "missing $env_file"
  # shellcheck source=/dev/null
  . "$env_file"
}

# ---------------------------------------------------------------- ruby ----

MIN_RUBY_MAJOR=3
MIN_RUBY_MINOR=0

ruby_version() { ruby -e 'print RUBY_VERSION' 2>/dev/null || true; }

# True when a ruby >= 3.0 is on PATH. macOS ships 2.6, which cannot build the
# native gems Jekyll 4.4 depends on, so this check is the usual first failure.
ruby_is_supported() {
  local v major minor
  v="$(ruby_version)"
  [ -n "$v" ] || return 1
  major="${v%%.*}"
  minor="${v#*.}"; minor="${minor%%.*}"
  [ "$major" -gt "$MIN_RUBY_MAJOR" ] && return 0
  [ "$major" -eq "$MIN_RUBY_MAJOR" ] && [ "$minor" -ge "$MIN_RUBY_MINOR" ]
}

require_ruby() {
  ruby_is_supported || die "ruby >= $MIN_RUBY_MAJOR.$MIN_RUBY_MINOR required, found '$(ruby_version)' at $(command -v ruby || echo 'nowhere on PATH'). Run scripts/bootstrap."
}

require_bundle() {
  require_ruby
  command -v bundle >/dev/null 2>&1 || die "bundler not found. Run scripts/bootstrap."
  [ -d "$REPO_ROOT/vendor/bundle" ] || bundle check >/dev/null 2>&1 \
    || die "gems not installed. Run scripts/bootstrap."
}

# bundle exec, with the platform ruby already on PATH.
jekyll() { bundle exec jekyll "$@"; }

# ----------------------------------------------------------- site info ----

# Port used by scripts/server and scripts/check-links; override with PORT=1234.
PORT="${PORT:-4000}"
export PORT
