# Automatically link rbenv Ruby installs to readline on OS X

OS X ships with [editline][] rather than [readline][], and by default any Ruby
you compile on it will use the former rather than the latter.  This [rbenv][]
plugin's sole purpose is to tell [ruby-build][] to link to a [Homebrew][]
installed readline instead.

The particular problem this was created to solve was getting the ironically
named [pry-editline][] to consistently work across my Ruby installs.  This is
by no means the only reason to eschew editline.

## Installation

    git clone git://github.com/tpope/rbenv-readline.git \
      ~/.rbenv/plugins/rbenv-readline

[rbenv]: https://github.com/sstephenson/rbenv
[ruby-build]: https://github.com/sstephenson/ruby-build
[Homebrew]: https://github.com/mxcl/homebrew
[editline]: http://www.thrysoee.dk/editline/
[readline]: http://www.gnu.org/software/readline/
[pry-editline]: https://github.com/tpope/pry-editline
