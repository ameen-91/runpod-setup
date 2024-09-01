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
}