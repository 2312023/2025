#!/bin/bash

# 12 modules
for m in {1..12}
do
    module=$(printf "Module %02d" $m)
    mkdir -p "$module"

    # 31 topics inside each module
    for t in {1..31}
    do
        topic=$(printf "Topic %02d" $t)
        mkdir -p "$module/$topic"

        # Add README.md
        FILE="$module/$topic/README.md"

        echo "# $module - $topic" > "$FILE"
        echo "" >> "$FILE"
        echo "This is the auto-generated README for $topic inside $module." >> "$FILE"
        echo "" >> "$FILE"
        echo "Use this space to write notes or content." >> "$FILE"
    done
done

