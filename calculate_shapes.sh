#!/bin/bash

# Input length and breadth of the rectangle from the user
echo "Enter the length of the rectangle:"
read length

echo "Enter the breadth of the rectangle:"
read breadth

# Input radius of the circle from the user
echo "Enter the radius of the circle:"
read radius

# Calculate area and perimeter of the rectangle
rectangle_area=$(echo "$length * $breadth" | bc)
rectangle_perimeter=$(echo "2 * ($length + $breadth)" | bc)

# Calculate area and circumference of the circle
circle_area=$(echo "3.14159 * $radius * $radius" | bc)
circle_circumference=$(echo "2 * 3.14159 * $radius" | bc)

# Display the results
echo "Rectangle - Area: $rectangle_area, Perimeter: $rectangle_perimeter"
echo "Circle - Area: $circle_area, Circumference: $circle_circumference"
