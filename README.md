# Linux-Environment-Setup

This script automates the process of setting up a Linux environment by detecting the operating system and installing essential tools such as Vim, GCC, Make, Git, and Curl. It supports various distributions including Ubuntu, Red Hat Enterprise Linux, and SUSE Linux Enterprise Server.

## Features

- **Automatic Distribution Detection**: Identifies the running Linux distribution and selects the appropriate package manager.
- **Essential Tools Installation**: Installs a set of common tools for development and general usage.
- **Supports Multiple Distributions**: Tailored for Ubuntu, Red Hat Enterprise Linux (RHEL), and SUSE Linux Enterprise Server (SLES).

## Supported Distributions

- Ubuntu
- Red Hat Enterprise Linux (RHEL)
- SUSE Linux Enterprise Server (SLES)

## Usage

To use this script:

1. **Download the Script**: Clone or download the `setup.sh` script to your local machine.

2. **Make the Script Executable**: Change the permissions to make the script executable. Run the following command:

    ```bash
    chmod +x setup_environment.sh
    ```

3. **Execute the Script**: Run the script using the following command. You might need to enter your password for sudo access:

    ```bash
    ./setup_environment.sh
    ```

## Notes

- The script uses `sudo` for installing packages, which might prompt for the user's password.
- Ensure your machine has internet access, as the script fetches packages from online repositories.
- It is recommended to review the script before executing, especially when using on critical systems.