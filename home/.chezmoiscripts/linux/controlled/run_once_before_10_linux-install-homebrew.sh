#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: (c) 2025 Rowan Gillson <devops@the.bald.engineer>
# SPDX-License-Identifier: MIT
#

set -euo pipefail

# This script installs Homebrew if it is not yet installed on the target system. It relies
# on the following environment variable set in the Chezmoi config: BREW_PATH

# Check that required Linux packages are installed as a pre-requisite
# for Homebrew installation: build-essential procps curl file git
REQUIRED_PACKAGES=("build-essential" "procps" "curl" "file" "git")
for package in "${REQUIRED_PACKAGES[@]}"; do
		if ! dpkg -s "${package}" &> /dev/null; then
				printf "Info: %s is not installed. Installing...\n" "${package}"
				sudo apt-get install -y "${package}"
		else
				printf "Info: %s is already installed.\n" "${package}"
		fi
done

# Check for Homebrew
if ! command -v brew &> /dev/null; then
		printf "Info: Homebrew is not installed. Installing Homebrew...\n"
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
		printf "Info: Homebrew is already installed. Continuing...\n"
fi

# Show Homebrew version
BREW_VERSION="$(${BREW_PATH} --version)"
printf "Info: Found %s installed.\n" "${BREW_VERSION}"
