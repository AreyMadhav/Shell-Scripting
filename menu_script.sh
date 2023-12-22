#!/bin/bash

while true; do
    # Display the menu
    echo "Menu:"
    echo "a) Contents of /etc/passwd"
    echo "b) List of users who have currently logged in"
    echo "c) Present working directory"
    echo "d) Exit"

    # Prompt the user for input
    read -p "Enter your choice (a/b/c/d): " choice

    # Process the user's choice
    case "$choice" in
        a)
            echo "Contents of /etc/passwd:"
            cat /etc/passwd
            ;;
        b)
            echo "List of users who have currently logged in:"
            who
            ;;
        c)
            echo "Present working directory:"
            pwd
            ;;
        d)
            echo "Exiting the program. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a valid option (a/b/c/d)."
            ;;
    esac
done
