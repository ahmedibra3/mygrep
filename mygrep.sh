#!/bin/bash

print_usage() {
    echo "Usage: $0 [-n] [-v] search_string filename"
    echo "Options:"
    echo "  -n    Show line numbers for each matching line"
    echo "  -v    Invert match (show non-matching lines)"
    echo "  --help  Display this help and exit"
}

# Initialize options
show_line_numbers=false
invert_match=false

# Handle options
while getopts ":nv-:" opt; do
    case "$opt" in
        n) show_line_numbers=true ;;
        v) invert_match=true ;;
        -)
            case "${OPTARG}" in
                help)
                    print_usage
                    exit 0
                    ;;
                *)
                    echo "Invalid option: --$OPTARG"
                    print_usage
                    exit 1
                    ;;
            esac
            ;;
        \?)
            echo "Invalid option: -$OPTARG"
            print_usage
            exit 1
            ;;
    esac
done

shift $((OPTIND-1))

# Check for enough arguments
if [[ $# -lt 2 ]]; then
    echo "Error: Missing arguments."
    print_usage
    exit 1
fi

search_string="$1"
file="$2"

# Check if file exists
if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' not found."
    exit 1
fi

# Main functionality
# Read file line by line
line_num=0
while IFS= read -r line; do
    ((line_num++))
    if echo "$line" | grep -i -q -- "$search_string"; then
        match=true
    else
        match=false
    fi

    # Invert match if needed
    if $invert_match; then
        match=$(! $match && echo true || echo false)
    fi

    if $match; then
        if $show_line_numbers; then
            printf "%d:%s\n" "$line_num" "$line"
        else
            echo "$line"
        fi
    fi
done < "$file"
