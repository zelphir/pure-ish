function __pureish_nodejs
  if type -q node
    if test -f "package.json"
      set -l icon_nodejs "$pureish_color_02"
      set -l node_version (string trim -l -c=v (command asdf current nodejs | awk '{print $1}' 2>/dev/null))
      echo "$icon_nodejs $pureish_color_246$node_version"
    end
  end
end
