#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: (c) 2024 Rowan Gillson <devops@the.bald.engineer>
# SPDX-License-Identifier: MIT
#

set -euo pipefail
printf '%s\n' "Reloading shell to apply changes..."
exec zsh
