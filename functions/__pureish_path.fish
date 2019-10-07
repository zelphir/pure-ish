function __pureish_path
  set -l path_prefix ""
  set -l path $PWD
  set -l max_path_length (math $COLUMNS - 20)
  set -l is_in_home (string match -r $HOME $path)
  set -q WORKSPACE; and set -l is_in_workspace (string match -r $WORKSPACE $path)

  if test -n "$is_in_home"
    set path (string replace $HOME "" $path)
    set path_prefix "$pureish_color_03~$pureish_color_normal"
  end

  if test -n "$is_in_workspace"
    set path (string replace $WORKSPACE "" $path)
    set path_prefix "$pureish_color_216≈$pureish_color_normal"
  end

  if test (string length $path) -gt $max_path_length;
    set path (string replace -ar '(\.?[^/]{1})[^/]*/' '$1/' $path)
  end

  echo $path_prefix$pureish_color_04$path$pureish_color_normal" "
end
