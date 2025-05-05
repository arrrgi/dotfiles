#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: © 2025 Rowan Gillson <devops@the.bald.engineer>
# SPDX-License-Identifier: MIT
#

set -euo pipefail

# Define global bin_directory variable
bin_directory="${HOME}/.local/bin"

# Create $HOME/bin directory if missing and add it to PATH
setup_bin_directory() {
  if [ ! -d "$bin_directory" ]; then
    mkdir -p "$bin_directory"
    chmod 0755 "$bin_directory"
  fi

  if [[ ":$PATH:" != *":$bin_directory:"* ]]; then
    # Prefer appending to PATH so existing binaries from Homebrew, etc. are found first
    export PATH="${PATH}:${bin_directory}"
  fi
}

# Check if a binary is installed
check_binary_installed() {
  local binary_name=$1
  if command -v "$binary_name" >/dev/null 2>&1; then
    return 0
  else
    return 1
  fi
}

# Fetch binary using curl and install it
fetch_binary() {
  local binary_name=$1
  local download_url=$2
  if ! curl -sL "$download_url" -o "${bin_directory}/${binary_name}"; then
    exit 1
  fi
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

# Fetch hcp binary
fetch_hcp_binary() {
  local hcp_system_os
  local hcp_system_arch
  local hcp_download_url
  hcp_system_os=$(uname -s | tr '[:upper:]' '[:lower:]')
  hcp_system_arch=$(uname -m | tr '[:upper:]' '[:lower:]' | sed 's/x86_64/amd64/g') # we need to replace the output of uname -m to match the hcp binary naming convention
  hcp_download_url=$(curl -s https://releases.hashicorp.com/hcp/index.json | jq -r --arg os "$hcp_system_os" --arg arch "$hcp_system_arch" '.versions | to_entries | max_by(.key) | .value.builds[] | select(.arch == $arch and .os == $os) | .url') || exit 1

  check_binary_installed "python3" || {
    exit 1
  }

  # Check if hcp is already installed and skip if found, otherwise install it
  if check_binary_installed "hcp"; then
    return 0
  else
    fetch_binary "hcp.zip" "$hcp_download_url"
    python3 -c "import zipfile, os; zipfile.ZipFile('${bin_directory}/hcp.zip').extractall('${bin_directory}'); os.chmod('${bin_directory}/hcp', 0o755); os.remove('${bin_directory}/hcp.zip')" || {
      exit 1
    }
  fi
}

main() {
  setup_bin_directory
  fetch_jq_binary
  fetch_hcp_binary
}

main "$@"
