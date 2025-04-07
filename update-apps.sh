# Desc: Update all installed apps

# === Update Homebrew ===
echo "========== Updating Homebrew =========="
brew update
echo

# === Upgrade all installed packages ===
echo "========== Upgrading Homebrew packages =========="

# Define arrays for normal and cask packages
brew_packages=(
    "warp"
    "angular-cli"
    "git"
    "nuget"
    "mongosh"
    "python@3.12"
    "pyenv"
)

brew_casks=(
    "iterm2"
    "ollama"
    "ngrok"
    "dbeaver-community"
)

# Upgrade normal packages
for package in "${brew_packages[@]}"; do
    echo "Upgrading $package..."
    brew upgrade "$package"
    echo
done

# Upgrade cask packages
for cask in "${brew_casks[@]}"; do
    echo "Upgrading $cask..."
    brew upgrade --cask "$cask"
    echo
done

echo "========== Homebrew packages upgrade complete =========="
echo

# === Cleanup ===
echo "========== Cleaning up Homebrew =========="
brew cleanup --dry-run
echo
