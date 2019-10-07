function __pureish_nodejs
  set -l node_version (string trim -l -c=v (node -v 2>/dev/null))
  set -l icon_nodejs "$pureish_color_02"

  if test -f "package.json"
    echo " $icon_nodejs $pureish_color_246$node_version "
  end
end
