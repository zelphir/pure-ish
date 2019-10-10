function __pureish_git_info
  set -g __fish_git_prompt_color_branch 949494
  set -g __fish_git_prompt_color_cleanstate green
  set -g __fish_git_prompt_color_stashstate magenta
  set -g __fish_git_prompt_color_merging yellow
  set -g __fish_git_prompt_char_stashstate "↩"
  set -g __fish_git_prompt_char_invalidstate "$pureish_color_01✖"
  set -g __fish_git_prompt_char_dirtystate "$pureish_color_216✚"
  set -g __fish_git_prompt_char_upstream_ahead "$pureish_color_216⇡"
  set -g __fish_git_prompt_char_upstream_behind "$pureish_color_06⇣"
  set -g __fish_git_prompt_char_upstream_prefix "$pureish_color_08|"
  set -g __fish_git_prompt_char_stateseparator "$pureish_color_08|"

  set -g __fish_git_prompt_showupstream "informative"
  set -g __fish_git_prompt_show_informative_status "yes"
  set -g __fish_git_prompt_showcolorhints "yes"
  set -g __fish_git_prompt_showstashstate "yes"

  echo -sn (string replace -r -a '\(|\)' "" (fish_git_prompt))
end
