if test -d /etc/profile.d/; then
  for profile in /etc/profile.d/*.sh; do
    test -r "$profile" && . "$profile"
  done
  unset profile
fi

# enable colored output from ls, etc
export CLICOLOR=1
export GOPATH=$HOME/programming/gospace
export PATH="$GOPATH/bin:$HOME/bin:$HOME/.rbenv/bin:$PATH"
[ -s "$HOME/.dnx/dnvm/dnvm.sh" ] && . "$HOME/.dnx/dnvm/dnvm.sh"
eval "$(rbenv init -)"
