#!/bin/bash

# Get today's date in the format YYYY-MM-DD
TODAY=$(date +%Y-%m-%d)

# Define the filename and directory
DIRECTORY="./fmc2"
FILENAME="${DIRECTORY}/${TODAY}.adoc"
INCLUDE_TEXT="include::fmc2/${TODAY}.adoc[]"

# Create the directory if it doesn't exist
mkdir -p "$DIRECTORY"

# Create the .adoc file with the specified content
echo "== ${TODAY}

:hardbreaks-option:

===" > "$FILENAME"

# Add the include text to ./fmc.adoc
echo "
$INCLUDE_TEXT" >> ./fmc2.adoc

# Confirm completion
echo "File ${FILENAME} created and included in ./fmc.adoc"
