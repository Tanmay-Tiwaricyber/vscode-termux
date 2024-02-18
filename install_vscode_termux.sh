#!/bin/bash

# Function to display a banner
display_banner() {
    echo "******************************"
    echo "*   Installing VS Code in    *"
    echo "*           Termux           *"
    echo "*   Developer - Silent Programmer   *"
    echo "******************************"
}

# Function to install Visual Studio Code
install_vscode() {
    echo "Installing Visual Studio Code..."
    pkg install wget -y
    wget https://github.com/termux/termux-packages/files/6076099/code_1.63.2_arm.deb.zip
    unzip code_1.63.2_arm.deb.zip
    dpkg -i code_1.63.2_arm.deb
    apt install -f
    rm code_1.63.2_arm.deb.zip code_1.63.2_arm.deb
}

# Function to run Visual Studio Code
run_vscode() {
    echo "Running Visual Studio Code..."
    code
}

# Main function
main() {
    display_banner
    install_vscode
    run_vscode
}

# Call the main function
main
