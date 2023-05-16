#!/bin/bash

version="1.0.0"
version_parts=($(echo "$version" | tr '.' ' '))  # Split the version string into an array

# Extract individual version components
major="${version_parts[0]}"
minor="${version_parts[1]}"
patch="${version_parts[2]}"

# Increment the last digit
patch=$((patch + 1))

# Construct the updated version string
updated_version="$major.$minor.$patch"

echo "Updated version: $updated_version"
