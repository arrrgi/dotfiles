
# Dotfiles

Opinionated portable dotfiles managed by Chezmoi

## Introduction

TODO:

## Features

TODO:

## Getting Started

TODO:

## Usage

### Sourcing to VS Code Dev Containers

Add setting key to .devcontainer/devcontainer.json within a project

```json
{
  "settings": {
    "remote.containers.dotfiles.repository": "arrrgi/dotfiles"
  }
}
```

### Sourcing to Server / Workstation environment

On first login, ensure at least **Zsh** is installed and configured as the user shell, then

```bash
$ sh -c "$(curl -fsLS chezmoi.io/get)" -- -b $HOME/.local/bin init --apply arrrgi
```

## Contributing

TODO:

## Related Projects

TODO:

## License

TODO:

