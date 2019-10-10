function __pureish_string_width
  set -l str $argv
  set -l hasBescapeSeq (string match -r '\(B' $argv)

  if ! test -n "$hasBescapeSeq"
    set str (command echo $argv | perl -pe 's/\[m/(B[m/g')
  end

  printf (string length (string replace -ra -- '\x1b.*?[mGKH]' '' $str))
end
