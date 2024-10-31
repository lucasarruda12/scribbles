if [ "$#" -ne 1 ]; then
    echo "usage: $0 filename"
    exit 1
fi

original_file=$1

if  [[ $(basename "$original_file") =~ ^.{2}\..{2}\.md$ ]]; then

    title=$(head -n 1 "$original_file" | sed 's/^# //')

    new_file="${original_file%.*} $title.md"

    mv  "$original_file" "$new_file"

    sed -i 's/^## /# /' "$new_file"

    sed -i '1,2d' "$new_file"

fi

