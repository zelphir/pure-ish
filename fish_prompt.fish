function fish_prompt
  set -g last_status $status
  echo -n (__pureish_left_prompt)
  echo -n (__pureish_symbol)
end
