# Desc: Update all installed apps

# === Update Homebrew ===
echo "========== Updating Homebrew =========="
brew update
echo

# === Upgrade all installed packages ===
echo "========== Upgrading Warp =========="
brew upgrade warp
echo

echo "========== Upgrading Angular Cli =========="
brew upgrade angular-cli
echo

echo "========== Upgrading Git =========="
brew upgrade git
echo

echo "========== Upgrading Nuget =========="
brew upgrade nuget
echo

echo "========== Upgrading mongosh =========="
brew upgrade mongosh
echo

echo "========== Upgrading Python =========="
brew upgrade python@3.12
echo

echo "========== Upgrading Pyenv =========="
brew upgrade pyenv
echo

# === Upgrade all cask packages ===

echo "========== Upgrading Iterm2 =========="
brew upgrade --cask iterm2
echo

echo "========== Upgrading Ollama =========="
brew upgrade --cask ollama
echo

echo "========== Upgrading Ngrok =========="
brew upgrade --cask ngrok
echo

echo "========== Upgrading DBeaver =========="
brew upgrade --cask dbeaver-community
echo

# === Cleanup ===
echo "========== Cleaning up Homebrew =========="
brew cleanup --dry-run
echo
