#!/bin/bash

# Function to check if a string is palindrome
is_palindrome() {
    local input="$1"
    local reversed=""
    
    # Reverse the string
    for (( i=${#input}-1; i>=0; i-- )); do
        reversed="${reversed}${input:$i:1}"
    done

    # Check if the reversed string is equal to the original string
    if [ "$input" == "$reversed" ]; then
        echo "The string '$input' is a palindrome."
    else
        echo "The string '$input' is not a palindrome."
    fi
}

# Input a string from the user
echo "Enter a string to check if it's a palindrome:"
read user_input

# Call the is_palindrome function
is_palindrome "$user_input"
