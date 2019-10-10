set -g __pureish_new_session 1

function fish_prompt
  set -g last_status $status

  set -l left_prompt (__pureish_left_prompt)
  set -l right_prompt (__pureish_right_prompt)
  set -q left_prompt;
    and set -l left_prompt_width (__pureish_string_width $left_prompt);
    or set -l left_prompt_width 0
  set -q right_prompt;
    and set -l right_prompt_width (__pureish_string_width $right_prompt);
    or set -l right_prompt_width 0
  set -l spaces (math $COLUMNS - $left_prompt_width - $right_prompt_width)

  if test $left_prompt_width -lt (math $COLUMNS - 5)
    if test $__pureish_new_session -eq 0
      echo
    end
    echo -n $left_prompt
  end

  printf "%-"$spaces"s" " " # render spaces

  if test (math "$COLUMNS - $left_prompt_width") -gt (math $right_prompt_width + 10)
    echo $right_prompt
  else
    echo
  end

  echo -n (__pureish_symbol)

  set __pureish_new_session 0
end
