function __pureish_right_prompt
  set -l duration (__pureish_cmd_duration)
  set -l nodejs (__pureish_nodejs)
  set -l docker (__pureish_docker_machine)
  set -l sha (__pureish_git_sha)

  echo -n (string join " " $sha $duration $nodejs $docker)
end
