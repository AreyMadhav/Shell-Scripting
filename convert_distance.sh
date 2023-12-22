#!/bin/bash

# Input distance in kilometers from the user
echo "Enter the distance between two cities in kilometers:"
read distance_in_km

# Conversion constants
meters_per_km=1000
feet_per_meter=3.28084
inches_per_foot=12
cm_per_meter=100

# Perform conversions
distance_in_meters=$(echo "$distance_in_km * $meters_per_km" | bc)
distance_in_feet=$(echo "$distance_in_meters * $feet_per_meter" | bc)
distance_in_inches=$(echo "$distance_in_feet * $inches_per_foot" | bc)
distance_in_cm=$(echo "$distance_in_meters * $cm_per_meter" | bc)

# Display the results
echo "Distance in meters: $distance_in_meters m"
echo "Distance in feet: $distance_in_feet ft"
echo "Distance in inches: $distance_in_inches inches"
echo "Distance in centimeters: $distance_in_cm cm"
