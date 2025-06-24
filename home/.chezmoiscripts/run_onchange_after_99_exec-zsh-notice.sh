#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: (c) 2025 Rowan Gillson <devops@the.bald.engineer>
# SPDX-License-Identifier: MIT
#
# .zshrc hash: {{ include (joinPath .chezmoi.sourceDir "dot_config/zsh/dot_zshrc.tmpl") | sha256sum }}
set -euo pipefail
# Display an ANSI escape code notice that changes to Zsh have been made and
# the user should exec zsh to apply them.
printf '\033[1;33m%s\033[0m\n' 'Warning: Changes to Zsh config have been made. Run "exec zsh" to apply them.'
