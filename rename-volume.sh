#!/bin/bash

# Display help message
show_help() {
    echo "Usage: $0 <source-volume> <destination-volume> [--remove|-rm] [--help|-h]"
    echo ""
    echo "Options:"
    echo "  <source-volume>         Source Docker volume to copy from"
    echo "  <destination-volume>    Destination Docker volume to copy to"
    echo "  --remove, -rm           Remove the source volume after copying"
    echo "  --help, -h              Display this help message"
    exit 0
}

# Check for help option
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    show_help
fi

# Check if both source and destination volume names are provided
if [[ $# -lt 2 || $# -gt 3 ]]; then
    echo "Error: Incorrect number of arguments"
    echo "Usage: $0 <source-volume> <destination-volume> [--remove|-rm]"
    echo "For more information, use: $0 --help"
    exit 1
fi

# Create a new volume using the provided name
docker volume create "$2"

# copy the contents of the old volume to the new volume
docker run --rm \
    -v "$1":/from \
    -v "$2":/to \
    alpine ash -c "cd /from ; cp -av . /to"

# Remove the old volume if --remove or -rm flag is provided
if [[ "$3" == "--remove" || "$3" == "-rm" ]]; then
    echo "Removing old volume '$1'..."
    docker volume rm "$1"
else
    echo "Old volume '$1' preserved. Use --remove or -rm as a third argument to remove it."
fi
