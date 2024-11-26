if [ "$#" -ne 1 ]; then
    echo "usage: $0 dirname"
fi

dir=$1

lastfile=$(ls "$dir" | sort | tail -n 1)

category=$(echo "$lasfile" | cut -c 1-2)
id=$(echo "$lastfile" | cut -c 4-5)

if [ "$id" -lt 9 ]; then
    nextfile="$dir/0$(($id + 1)).md"
else
    nextfile="$dir/$(($id + 1)).md"
fi

