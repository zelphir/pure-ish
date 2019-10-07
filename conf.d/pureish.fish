# Base fg colors
set -g pureish_color_00 (set_color black)
set -g pureish_color_01 (set_color red)
set -g pureish_color_02 (set_color green)
set -g pureish_color_03 (set_color yellow)
set -g pureish_color_04 (set_color blue)
set -g pureish_color_05 (set_color magenta)
set -g pureish_color_06 (set_color cyan)
set -g pureish_color_07 (set_color white)
set -g pureish_color_08 (set_color brblack)
set -g pureish_color_09 (set_color brred)
set -g pureish_color_10 (set_color brgreen)
set -g pureish_color_11 (set_color bryellow)
set -g pureish_color_12 (set_color brblue)
set -g pureish_color_13 (set_color brmagenta)
set -g pureish_color_14 (set_color brcyan)
set -g pureish_color_15 (set_color brwhite)
set -g pureish_color_normal (set_color normal)

# More fg colors from 256 palette
set -g pureish_color_216 (set_color ffaf87)
set -g pureish_color_246 (set_color 949494)

# Base bg colors
set -g pureish_bgcolor_00 (set_color -b black)
set -g pureish_bgcolor_01 (set_color -b red)
set -g pureish_bgcolor_02 (set_color -b green)
set -g pureish_bgcolor_03 (set_color -b yellow)
set -g pureish_bgcolor_04 (set_color -b blue)
set -g pureish_bgcolor_05 (set_color -b magenta)
set -g pureish_bgcolor_06 (set_color -b cyan)
set -g pureish_bgcolor_07 (set_color -b white)
set -g pureish_bgcolor_08 (set_color -b brblack)
set -g pureish_bgcolor_09 (set_color -b brred)
set -g pureish_bgcolor_10 (set_color -b brgreen)
set -g pureish_bgcolor_11 (set_color -b bryellow)
set -g pureish_bgcolor_12 (set_color -b brblue)
set -g pureish_bgcolor_13 (set_color -b brmagenta)
set -g pureish_bgcolor_14 (set_color -b brcyan)
set -g pureish_bgcolor_15 (set_color -b brwhite)
set -g pureish_bgcolor_normal (set_color -b normal)

# More bg colors from 256 palette
set -g pureish_bgcolor_216 (set_color -b ffaf87)

# Symbols
set -l prefix "["
set -l suffix "]"
set -g pureish_git_prefix "$pureish_color_08$prefix"
set -g pureish_git_suffix "$pureish_color_08$suffix"
