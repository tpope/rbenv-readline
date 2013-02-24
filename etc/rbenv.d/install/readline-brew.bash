if command -v brew >/dev/null; then
  before_install set_up_brew_readline
fi

set_up_brew_readline() {
  if [ ! -d "$(brew --prefix readline)" ]; then
    brew install readline
  fi
  RUBY_CONFIGURE_OPTS="--with-readline-dir=$(brew --prefix readline) $RUBY_CONFIGURE_OPTS"
  export RUBY_CONFIGURE_OPTS
}
