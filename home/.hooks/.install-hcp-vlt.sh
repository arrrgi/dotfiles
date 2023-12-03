#!/usr/bin/env bash

set -euo pipefail

# Define global bin_directory variable
bin_directory="${HOME}/.local/bin"

# Create $HOME/bin directory if missing and add it to PATH
setup_bin_directory() {
  if [ ! -d "$bin_directory" ]; then
    printf "Info: Creating %s directory...\n" "$bin_directory"
    mkdir -p "$bin_directory"
    printf "Info: Setting permissions on %s...\n" "$bin_directory"
    chmod 0755 "$bin_directory"
  fi

  if [[ ":$PATH:" != *":$bin_directory:"* ]]; then
    printf "Info: Adding %s to PATH...\n" "$bin_directory"
    # Prefer appending to PATH so existing binaries from Homebrew, etc. are found first
    export PATH="${PATH}:${bin_directory}"
  fi
}

# Check if a binary is installed
check_binary_installed() {
  local binary_name=$1
  if command -v "$binary_name" >/dev/null 2>&1; then
    printf "Info: %s binary already installed. Continuing...\n" "$binary_name"
    return 0
  else
    printf "Warning: %s binary not found in PATH. Installing...\n" "$binary_name"
    return 1
  fi
}

# Fetch binary using curl and install it
fetch_binary() {
  local binary_name=$1
  local download_url=$2
  printf "Info: Fetching %s binary...\n" "$binary_name"
  printf "Info: Download URL: %s\n" "$download_url"

  if ! curl -sL "$download_url" -o "${bin_directory}/${binary_name}"; then
    printf "Error: Failed to download %s binary from %s\n" "$binary_name" "$download_url"
    exit 1
  fi

  printf "Info: Setting executable permissions on %s/%s...\n" "$bin_directory" "$binary_name"
  chmod +x "${bin_directory}/${binary_name}"
}

# Fetch jq binary
fetch_jq_binary() {
  local jq_system_arch
  local jq_download_url
  jq_system_arch=$(uname -s | tr '[:upper:]' '[:lower:]' | sed 's/darwin/macos/g')-$(uname -m | tr '[:upper:]' '[:lower:]' | sed 's/x86_64/amd64/g') # we need to replace the output of uname -s and uname -m to match the jq binary naming convention
  jq_download_url=$(curl -sL https://api.github.com/repos/jqlang/jq/releases/latest | grep "browser_download_url.*${jq_system_arch}" | cut -d '"' -f 4) || exit 1

  # Check if jq is already installed (e.g. via Homebrew) and skip if found, otherwise install it
  check_binary_installed "jq" || fetch_binary "jq" "$jq_download_url"
}

# Fetch vlt binary
fetch_vlt_binary() {
  local vlt_system_os
  local vlt_system_arch
  local vlt_download_url
  vlt_system_os=$(uname -s | tr '[:upper:]' '[:lower:]')
  vlt_system_arch=$(uname -m | tr '[:upper:]' '[:lower:]' | sed 's/x86_64/amd64/g') # we need to replace the output of uname -m to match the vlt binary naming convention
  vlt_download_url=$(curl -s https://releases.hashicorp.com/vlt/index.json | jq -r --arg os "$vlt_system_os" --arg arch "$vlt_system_arch" '.versions | to_entries | map(select(.key | test("^[0-9]+\\.[0-9]+\\.[0-9]+$"))) | map(.value.builds[] | select(.os == $os and .arch == $arch)) | sort_by(.version) | last | .url') || exit 1

  check_binary_installed "python3" || {
    printf "Error: Python3 not found in PATH. Exiting!\n"
    exit 1
  }

  # Check if vlt is already installed and skip if found, otherwise install it
  if check_binary_installed "vlt"; then
    # printf "Info: vlt already installed...\n"
    return 0
  else
    fetch_binary "vlt.zip" "$vlt_download_url"
    printf "Info: Unzipping vlt.zip to %s...\n" "$bin_directory"
    python3 -c "import zipfile, os; zipfile.ZipFile('${bin_directory}/vlt.zip').extractall('${bin_directory}'); os.chmod('${bin_directory}/vlt', 0o755); os.remove('${bin_directory}/vlt.zip')" || {
      printf "Error: Failed to unzip vlt.zip to %s. Exiting!\n" "$bin_directory"
      exit 1
    }
  fi
}

main() {
  setup_bin_directory
  fetch_jq_binary
  fetch_vlt_binary
  printf "Info: Completed init hook script for Chezmoi dependencies.\n"
}

main "$@"

# vim: set ft=sh ts=2 sw=2 et
