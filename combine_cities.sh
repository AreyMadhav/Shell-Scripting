#!/bin/bash

# Accept city names from the keyboard
echo "Enter city names (press Enter after each city, type 'done' to finish):"
cities=()
while true; do
    read city
    if [ "$city" == "done" ]; then
        break
    fi
    cities+=("$city")
done

# Combine the list of cities with the contents of the cityfile
cat cityfile <(printf "%s\n" "${cities[@]}") | sort > newcity

echo "Combined and sorted list of cities saved in 'newcity'."
