#!/bin/bash

update  () {
    echo "Updating package list..."
    apt update

    echo "Upgrading installed packages..."
    apt upgrade -y
    
    echo "Installing sudo..."
    apt install sudo -y

    echo "Installing essential packages..."
    sudo apt install gh -y

    echo "Updating Python..."
    sudo apt install python3.12 -y

    echo "Installing Poetry..."
    pip install poetry
  

    # Check if the GITHUB_TOKEN environment variable is set
    if [ -z "$GITHUB_TOKEN" ]; then
        echo "Error: GITHUB_TOKEN environment variable is not set."
        exit 1
    fi

    # Authenticate using the token from the environment variable
    echo "$GITHUB_TOKEN" | gh auth login --with-token

}

update