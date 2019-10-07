function __pureish_git_update_workdir
  set -l working_tree $argv[1]
  if not set -q __pureish_git_workdir
    set -g __pureish_git_workdir $working_tree
    return 0
  end

  if test "$__pureish_git_workdir" = $working_tree
    return 0
  end

  # reset git dirty state on directory change
  set -g __pureish_git_workdir $working_tree
  set -e __pureish_git_is_dirty
  set -e __pureish_git_last_dirty_check

  # mask any failed set calls
  return 0
end
