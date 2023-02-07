#!/bin/bash

# Adriano Domingos - By kassalero

# Check for vulnerabilities in installed packages

printf "Checking for vulnerabilities in installed packages...\n"

# Use the command line tool 'apt-get' to check for updates
updates=$(apt-get upgrade --dry-run)

# Check if there are any updates available
if [[ -n "$updates" ]]; then
  printf "Vulnerabilities found! Please update the following packages:\n"
  printf "$updates\n"
else
  printf "No vulnerabilities found.\n"
fi
