function __pureish_git_fetch
  if test $__pureish_new_session -eq 1
    return 0
  end

  if set -q __pureish_fetching
    return 0
  end

  set -l working_tree $argv[1]

  pushd $working_tree
  if test ! (command git rev-parse --abbrev-ref @'{u}' 2>/dev/null)
    popd
    return 0
  end

  set -l git_fetch_required 0

  if test -e .git/FETCH_HEAD
    set -l last_fetch_timestamp (command stat -c "%Y" .git/FETCH_HEAD)
    set -l current_timestamp (__pureish_timestamp)
    set -l time_since_last_fetch (math "$current_timestamp - $last_fetch_timestamp")

    if test $time_since_last_fetch -gt 300 # 5 minutes
      set git_fetch_required 1
    end
  else
    set git_fetch_required 1
  end

  if test $git_fetch_required -eq 0
    popd
    return 0
  end

  set -l cmd "env GIT_TERMINAL_PROMPT=0 git -c gc.auto=0 fetch -p > /dev/null 2>&1"
  __pureish_run_async "__pureish_fetching" __pureish_update_prompt $cmd

  popd
end
