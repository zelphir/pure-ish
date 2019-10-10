# root or ssh session
function __pureish_root_ssh
  set -l uid (id -u)

  if test \( $uid -eq 0 -o -n "$SUDO_USER" \)
    echo -sn (set_color -b red) "$pureish_color_07  $pureish_color_normal"
  else if test -n "$SSH_CONNECTION"
    echo -sn "$pureish_color_06$USER@" (command hostname) "$pureish_color_normal"
  end
end
