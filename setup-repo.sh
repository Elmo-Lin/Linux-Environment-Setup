#!/bin/bash

function print_error() {
    message=$1
    RED='\033[0;31m'
    NC='\033[0m'
    echo -e "${RED}[error] ${message} (${BASH_SOURCE}) ${NC}"
}

function print_info() {
    message=$1
    GREEN='\033[1;32m'
    NC='\033[0m'
    echo -e "${GREEN}[info] ${message}${NC}"
}

# Detect the Linux distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
else
    print_error "Unable to detect Linux distribution"
    exit 1
fi

# Install software based on the detected distribution
case $OS in
    "Ubuntu")
        print_info "Ubuntu detected, installing software..."
        sudo apt update
        sudo apt install -y vim gcc make git curl
        ;;

    "Red Hat Enterprise Linux")
        print_info "Red Hat detected, installing software..."
        sudo yum update
        sudo yum install -y vim gcc make git curl
        ;;

    "SUSE Linux Enterprise Server")
        print_info "SUSE detected, installing software..."
        sudo zypper refresh
        sudo zypper install -y vim gcc make git curl
        ;;

    *)
        print_error "Unsupported Linux distribution: $OS"
        exit 1
        ;;
esac

print_info "Environment setup complete!"

