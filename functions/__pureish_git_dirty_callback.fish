function __pureish_git_dirty_callback
  set -g __pureish_git_last_dirty_check (__pureish_timestamp)
  set -l dirty_files_count $argv[1]

  if test $dirty_files_count -gt 0
    set -g __pureish_git_is_dirty
  else
    set -e __pureish_git_is_dirty
  end

  __pureish_update_prompt
end
