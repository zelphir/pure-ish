function __pureish_symbol
  set --local prompt_symbol "❯ "
  set --local prompt_color $pureish_color_05
  set --local pre_prompt ""
  set --local pre_prompt_type ""
  set --local pre_prompt_bgcolor ""
  set --local is_vi_mode (string match -r "fish_(vi|hybrid)_key_bindings" $fish_key_bindings)

  switch $fish_bind_mode
    case "default"
      set pre_prompt_bgcolor $pureish_bgcolor_14
      set pre_prompt_type "N"
    case "visual"
      set pre_prompt_bgcolor $pureish_bgcolor_03
      set pre_prompt_type "V"
    case "replace_one"
      set pre_prompt_bgcolor $pureish_bgcolor_04
      set pre_prompt_type "R"
  end

  if test $last_status -ne 0
    set prompt_color $pureish_color_01
    set pre_prompt_bgcolor $pureish_bgcolor_01
  end

  if test -n "$is_vi_mode" \
    -a "$fish_bind_mode" != "insert"
    set pre_prompt "$pre_prompt_bgcolor $pureish_color_00$pre_prompt_type $pureish_bgcolor_normal "
    set prompt_symbol ""
  end

  if set -q __pureish_fetching
    set prompt_color $pureish_color_03
    set prompt_symbol \Uf9e5
  end

  echo -sn $pre_prompt$prompt_color$prompt_symbol$pureish_color_normal
end
