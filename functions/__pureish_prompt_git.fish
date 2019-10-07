function __pureish_prompt_git
  set -l prefix "["
  set -l suffix "]"
  set -l git_working_tree (command git rev-parse --show-toplevel 2>/dev/null)

  if test -n "$git_working_tree"
    __pureish_git_fetch $git_working_tree
    __pureish_git_update_workdir $git_working_tree

    echo -n (__pureish_git_remote) \
      $pureish_color_08$prefix$pureish_color_normal(string trim (__pureish_git_info))$pureish_color_08$suffix$pureish_color_normal \
      ""
    if set -q __pureish_fetching
      echo -n "$pureish_color_03•$pureish_color_normal"
    end
  end
end
