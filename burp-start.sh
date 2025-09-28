#!/bin/bash

# Burp Suite Community Edition Launcher
# Changes to Desktop directory and runs Burp Suite

echo "Starting Burp Suite Community Edition..."

# Change to Desktop directory
cd ~/Desktop

# Check if we successfully changed directories
if [ $? -ne 0 ]; then
    echo "Error: Could not change to ~/Desktop directory"
    exit 1
fi

# Check if Burp Suite jar file exists
if ! ls burpsuite_community_*.jar 1> /dev/null 2>&1; then
    echo "Error: No Burp Suite Community jar file found in ~/Desktop"
    echo "Looking for files matching: burpsuite_community_*.jar"
    exit 1
fi

# Launch Burp Suite
echo "Launching Burp Suite from $(pwd)"
java -jar burpsuite_community_*.jar