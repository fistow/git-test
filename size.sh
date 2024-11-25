#! /bin/bash

get_size() {
    local path="$1"
    local size=$(du -h -s "$path" 2>/dev/null | cut -f1)
    echo $size
}
items=$(ls -A)

for item in $items; do
    size=$(get_size "$item")
    echo -e "$size\t$item"
done |sort -r -h -k1,1
