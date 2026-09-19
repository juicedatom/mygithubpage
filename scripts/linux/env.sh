# shellcheck shell=bash
#
# Linux environment. Sourced by scripts/lib/common.sh.

OPEN_CMD="xdg-open"
export OPEN_CMD

_prepend_path() {
  case ":$PATH:" in
    *":$1:"*) ;;
    *) PATH="$1:$PATH" ;;
  esac
}

if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init - bash 2>/dev/null)" || true
fi

# Distro rubies install user gems under ~/.local/share/gem or ~/.gem; both put
# binstubs somewhere PATH usually misses.
if command -v ruby >/dev/null 2>&1; then
  _user_gem_bin="$(ruby -e 'require "rubygems"; print Gem.user_dir' 2>/dev/null)/bin"
  [ -d "$_user_gem_bin" ] && _prepend_path "$_user_gem_bin"
  unset _user_gem_bin
fi

export PATH
unset -f _prepend_path
