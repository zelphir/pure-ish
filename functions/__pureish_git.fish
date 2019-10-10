function __pureish_git
  set -l git_working_tree (command git rev-parse --show-toplevel 2>/dev/null)

  if test -n "$git_working_tree"
    __pureish_git_fetch $git_working_tree
    __pureish_git_update_workdir $git_working_tree

    echo -n (__pureish_git_remote) \
      $pureish_git_prefix(string trim (__pureish_git_info))$pureish_git_suffix
  end
end
