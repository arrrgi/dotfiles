# Usage Instructions

## Prerequisites

1. [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install), OR
2. MacOS, OR
3. Ubuntu/Debian Linux (LTS or stable release)

You will also need an AWS Secrets Manager configuration with an access key and secret already created, and preferably locked down to an IAM user with read only access to secrets. Record these beforehand as they are inputs during the dotfiles installation process.

## Installation

For WSL on Corporate devices, first ensure the companies CA certificate is installed on the WSL machine. This can be done by downloading the certificate from the company's website and then running the following command:

```bash
sudo cp <path/to/certificate>.crt /usr/local/share/ca-certificates/<certificate>.crt
sudo update-ca-certificates
```

Then, ensure you have the following information ready:

1. Full name
2. Email address
3. Git username
4. (optional) Azure DevOps organization name
5. AWS Access Key ID
6. AWS Secret Access Key
7. AWS Region (default: ap-southeast-2)

Ideally, you have created an AWS IAM user with the necessary policy attached to read secrets from AWS Secrets Manager. The Access Key ID and Secret Access Key should be generated for this IAM user.

Then, run the following command:

```bash
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply arrrgi --use-builtin-git=true
```

Done! After following the prompts and providing details, you should now have a fully configured environment.

NOTE: It is also recommended to add the following to your `/etc/zsh/zshenv` and `/etc/profile` files to ensure that the Homebrew paths are set correctly for all users on Linux systems:

```bash
if [ -d "/home/linuxbrew/.linuxbrew/bin" ] && [ -d "/home/linuxbrew/.linuxbrew/sbin" ]; then
    export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
fi
```
