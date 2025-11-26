# My Scripts Repo

How to install:
1. Copy to /usr/local/bin or add to PATH
2. chmod +x flutter-helper



How collaborators test / install the script locally
Option A — run from repo:
./scripts/my_script arg1

Option B — install to /usr/local/bin (requires sudo on many systems):
sudo cp scripts/my_script /usr/local/bin/my_script
sudo chmod +x /usr/local/bin/my_script

# or create a symlink:
sudo ln -s /path/to/repo/scripts/my_script /usr/local/bin/my_script
Option C — add scripts/ to PATH (local dev):
export PATH="$HOME/projects/my-scripts-repo/scripts:$PATH"
