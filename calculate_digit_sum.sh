#!/bin/bash

# Input a five-digit number from the user
echo "Enter a five-digit number:"
read number

# Check if the input is a five-digit number
if [[ ! $number =~ ^[0-9]{5}$ ]]; then
    echo "Invalid input. Please enter a valid five-digit number."
    exit 1
fi

# Calculate the sum of its digits
digit_sum=0
for (( i=0; i<${#number}; i++ )); do
    digit=${number:$i:1}
    digit_sum=$((digit_sum + digit))
done

# Display the result
echo "Sum of the digits of $number is: $digit_sum"
