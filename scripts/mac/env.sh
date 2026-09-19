# shellcheck shell=bash
#
# macOS environment. Sourced by scripts/lib/common.sh.
#
# The system ruby at /usr/bin/ruby is 2.6 and is too old (and unwritable), so
# prefer, in order: an active version manager, Homebrew's ruby, system ruby.

OPEN_CMD="open"
export OPEN_CMD

BREW_PREFIX="${BREW_PREFIX:-$(brew --prefix 2>/dev/null || echo /opt/homebrew)}"
export BREW_PREFIX

_prepend_path() {
  case ":$PATH:" in
    *":$1:"*) ;;
    *) PATH="$1:$PATH" ;;
  esac
}

# rbenv / chruby / mise / asdf, if the user has one shimmed in already.
if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init - bash 2>/dev/null)" || true
fi

# Homebrew keeps ruby keg-only, so it needs an explicit PATH entry, plus the
# gem bindir so `bundle`/`jekyll` binstubs resolve.
if [ -d "$BREW_PREFIX/opt/ruby/bin" ]; then
  _prepend_path "$BREW_PREFIX/opt/ruby/bin"
fi
if [ -d "$BREW_PREFIX/lib/ruby/gems" ]; then
  for _gemdir in "$BREW_PREFIX"/lib/ruby/gems/*/bin; do
    [ -d "$_gemdir" ] && _prepend_path "$_gemdir"
  done
  unset _gemdir
fi

export PATH
unset -f _prepend_path
