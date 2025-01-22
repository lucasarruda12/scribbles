# ms - Make Summary
#
# Build a sumarry file from a directory

cd $1 && tree . -fi --filesfirst | sort -d | awk -F/ '{if ($NF ~ /\.md$/) { print "- [" $NF "](" $0 ")"} else {print "\n# " $NF "\n"}}' | sed '/u[0-9]/ s/^/\t/'

