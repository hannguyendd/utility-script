# Scripts Collection

A collection of useful shell scripts for development workflows.

## Available Scripts

### rename-volume.sh

Utility script to rename Docker volumes by copying contents to a new volume.

```bash
./rename-volume.sh <source-volume> <destination-volume> [--remove|-rm]
```

Options:

- `source-volume`: Source Docker volume to copy from
- `destination-volume`: Destination Docker volume to copy to
- `--remove, -rm`: (Optional) Remove the source volume after copying
- `--help, -h`: Display help message

### update-apps.sh

Script to update installed applications and packages via Homebrew.

```bash
./update-apps.sh
```

Performs the following operations:

- Updates Homebrew package definitions
- Upgrades specified Homebrew packages:
  - warp
  - angular-cli
  - git
  - nuget
  - mongosh
  - python@3.12
  - pyenv
- Upgrades specified Homebrew casks:
  - iterm2
  - ollama
  - ngrok
  - dbeaver-community
- Performs cleanup of old versions

## Usage

Make sure the scripts are executable:

```bash
chmod +x rename-volume.sh update-apps.sh
```

Then run them directly from the command line.
