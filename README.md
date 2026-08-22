# Dotfiles

## Description

Opinionated dotfiles for \*nix based personal and work development environments,
managed by [Chezmoi](https://www.chezmoi.io).

## Setup

Before running the installation, you need to configure environment variables with your credentials.

**Requirements:**

1. Ubuntu (VM, Baremetal or WSL) or MacOS target operating system
2. curl installed in target operating system
3. A text editor (vi, nano, etc.)

**Steps:**

1. **Configure Bash to ignore commands with leading spaces** (temporary, for this session only):

   ```bash
   export HISTCONTROL=ignorespace
   ```

2. **Download the environment template**:

   ```bash
   curl -fsSL https://raw.githubusercontent.com/arrrgi/dotfiles/main/.env.example -o .env && chmod 0600 .env
   ```

3. **Edit the `.env` file** with your credentials:

   ```bash
   vi .env
   ```

   Replace the placeholder values with your actual credentials. See the file comments for which variables are required for your target environment:

   - **MacOS**: GIT_NAME, GIT_EMAIL, GIT_GH_USERNAME, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION
   - **WSL**: GIT_NAME, GIT_EMAIL, GIT_ADO_USERNAME, GIT_ADO_ORG, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION
   - **Ubuntu Home Lab**: AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION
   - **Work/VPS/Media Servers**: No variables required

4. **Load the values temporarily for the install** and keep them out of history and immediately cleanup the file:

   ```bash
   set -o allexport
   source .env
   set +o allexport
   rm -f .env
   ```

> Note: Do not keep check in the `.env` file or store it in a shared location. Loading credentials only for the install and unsetting them immediately helps prevent secrets from leaking into long-lived shell sessions.

1. **Run the installation immediately** while the variables are available:

   ```bash
   sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply arrrgi [--branch=ref] --use-builtin-git=true
   ```

2. **Clear sensitive environment variables after install**:

   ```bash
   unset GIT_NAME GIT_EMAIL GIT_GH_USERNAME GIT_ADO_USERNAME GIT_ADO_ORG AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_REGION
   ```

**Note:** The HISTCONTROL configuration and Bash shell are only needed for initial setup. Once Chezmoi applies your configuration, Zsh will become your default shell and Bash is no longer used.

## Installation

```bash
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply arrrgi [--branch=ref] --use-builtin-git=true
```

> NOTE: using `--branch=ref` is optional but useful if you want to apply a config that diverges from the main branch

## License

MIT
