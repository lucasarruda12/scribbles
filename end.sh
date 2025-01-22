# ms - Make Summary
#
# Build a sumarry file from a directory

function make_summary {
    cd $1 && tree . -fi --filesfirst | # list everything in the directory
    sort -d |
    awk -F/ '{if ($NF ~ /\.md$/) { print "- [" $NF "](" $0 ")"} else {print "\n# " $NF "\n"}}' | # Format Markdownly
    sed '/u[0-9]/ s/^/\t/' # Add indentation for subchapters (marked as u1-u3)
}

make_summary src > src/SUMMARY.md
git add .
git commit -m "`date`"
git push
