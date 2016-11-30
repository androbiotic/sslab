/*NON RECURSIVE SHELL SCRIPT THAT ACCEPTS ANY NUMBER OF ARGUMENT AND REVERSE THEM*/
#!/bin/sh
echo "Input string:$*"
for x in "$@"
do
  y=$x" "$y
done
echo "Reversed String:$y"
