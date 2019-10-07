function __pureish_git_sha
  set -l git_sha (command git rev-parse --short=7 HEAD 2>/dev/null)

  if test -n "$git_sha"
    set -l git_sha_symbol "$pureish_color_03"
    set sha "$pureish_color_246$git_sha"
    echo "$git_sha_symbol $sha"
  end
end
