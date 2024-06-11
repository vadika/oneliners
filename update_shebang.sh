#!/usr//bin/env bash

# Base directory to start the search, you can modify this to the specific directory you want
BASE_DIR="."

# Find all .sh files recursively in the base directory
find "$BASE_DIR" -type f -name "*.sh" | while read -r FILE; do
    # Check if the file starts with #!/bin/bash
    if head -n 1 "$FILE" | grep -q "^#!/bin/bash"; then
        # Substitute the shebang line
        sed -i 's|^#!/bin/bash|#!/usr/bin/env bash|' "$FILE"
        echo "Updated shebang in $FILE"
    fi
done

