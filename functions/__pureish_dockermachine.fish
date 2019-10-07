function __pureish_dockermachine
  set -l docker_icon "$pureish_color_04"

  if test -n "$DOCKER_MACHINE_NAME"
    echo " $docker_icon $pureish_color_246$DOCKER_MACHINE_NAME "
  end
end
