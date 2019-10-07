function __pureish_git_remote --description "Parse current Git remote"
  set --local remote (command git ls-remote --get-url 2>/dev/null); or set remote ""
  switch $remote
    case "*github*"
      echo "$pureish_color_07"
    case "*gitlab*"
      echo "$pureish_color_216"
    case "*bitbucket*"
      echo "$pureish_color_04"
    case '*'
      echo "$pureish_color_14"
  end
end
