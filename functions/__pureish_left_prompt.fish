function __pureish_left_prompt
  set -l root_ssh (__pureish_root_ssh)
  set -l path (__pureish_path)
  set -l git (__pureish_git)

  # Delay when new session git info in prompt for a faster prompt rendering
  if test $__pureish_new_session -eq 1
    set git ""
  end

  echo -n (string join " " $root_ssh $path $git)
end
