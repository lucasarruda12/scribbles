if [ "$#" -ne 1 ]; then
    echo "usage: $0 filename"
    exit 1
fi

dir=$1

for file in "$dir"/*; do
    if [ -f "$file" ]; then
        bash fix-file.sh "$file"
    fi

    if [ -d "$file" ]; then
        bash prepare-dir.sh "$file"
    fi
done
