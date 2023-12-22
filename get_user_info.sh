#!/bin/bash

# Check if logname argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <logname>"
    exit 1
fi

# Extract information from /etc/passwd
user_info=$(grep "^$1:" /etc/passwd)

# Check if the user exists
if [ -z "$user_info" ]; then
    echo "User '$1' not found."
    exit 1
fi

# Extract relevant fields from user_info
username=$(echo "$user_info" | cut -d: -f1)
uid=$(echo "$user_info" | cut -d: -f3)
gid=$(echo "$user_info" | cut -d: -f4)
gecos=$(echo "$user_info" | cut -d: -f5)
home_directory=$(echo "$user_info" | cut -d: -f6)
shell=$(echo "$user_info" | cut -d: -f7)

# Display the information
echo "Username: $username"
echo "User ID (UID): $uid"
echo "Group ID (GID): $gid"
echo "Full Name: $gecos"
echo "Home Directory: $home_directory"
echo "Shell: $shell"
