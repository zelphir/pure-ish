function fish_prompt
  set -g last_status $status
  echo -n (__pureish_prompt_details)
  echo -n (__pureish_prompt_symbol)
end
