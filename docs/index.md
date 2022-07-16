# Welcome to MkDocs

For full documentation visit [mkdocs.org](https://www.mkdocs.org).

## Commands

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs -h` - Print help message and exit.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Dotfiles Decision Tree

```mermaid
flowchart LR
A[Start] --> B{OS <br> == <br> Darwin?};
B -->|True| C[Name = 'xxxx' <br> Email = 'yyyy' <br> GitHub = 'zzzz' <br> Personal = true];
B -->|False| D{Env <br> == <br> Container?};
D -->|True| E[Container = true];
D -->|False| F{Env <br> == <br> WSL?};
F -->|True| G[Name = 'xxxx' <br> Email = 'yyyy' <br> DevOps = 'zzzz' <br> Work = true];
F -->|False| H[Server = true];
C --> I[End];
E --> I;
G --> I;
H --> I;

```