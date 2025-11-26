# 📦 My Scripts Repository

A collection of utility scripts designed to be installed globally on your system for easy command-line access.

## 🚀 Quick Start

### Prerequisites
- Git installed on your system
- sudo access (for global installation)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/my-scripts-repo.git
   cd my-scripts-repo
   ```

2. **Run the installer**
   ```bash
   ./install.sh
   ```
   
   You'll be prompted for your password as the installer copies scripts to `/usr/local/bin`

3. **Start using your scripts**
   ```bash
   my_script
   flutter-helper
   ```

## 🛠️ Development & Testing

Collaborators can test scripts locally without global installation using any of these methods:

### Option A: Run directly from repository
```bash
./scripts/my_script arg1 arg2
```
Simple and quick for testing changes.

### Option B: Install to /usr/local/bin
```bash
# Copy method
sudo cp scripts/my_script /usr/local/bin/my_script
sudo chmod +x /usr/local/bin/my_script

# Or symlink method (updates automatically with git pull)
sudo ln -s $(pwd)/scripts/my_script /usr/local/bin/my_script
```
Best for testing scripts as if they were globally installed.

### Option C: Add to PATH (development setup)
```bash
export PATH="$HOME/projects/my-scripts-repo/scripts:$PATH"
```
Add this line to your `~/.bashrc` or `~/.zshrc` for persistent access. Ideal for active development.

## 📝 Available Scripts

- **flutter-helper** - Flutter development utilities
- **my_script** - [Add description]

## 🔐 Google Drive Authentication (gdrive)

Some scripts in this repository (such as the Build Android APK and Upload to Google Drive step) require access to your Google Drive account via the `gdrive` CLI tool.

### 1. Export your gdrive account

Run the following command (only once per machine):

```bash
gdrive about --service-account your-service-account.json
```

Or, if you already have an export file (e.g., `gdrive_export-your_email.tar`), place it in a safe location.

### 2. Place the exported account in the required directory

The script expects the exported file to be available at:

```bash
$HOME/gdrive_export.tar
```

If your file has a different name, rename it:

```bash
mv gdrive_export-your_email.tar ~/gdrive_export.tar
```

### 3. Ensure gdrive is installed

If you haven't installed `gdrive` yet:

**macOS:**
```bash
brew install gdrive
```

**Linux:**
```bash
sudo snap install gdrive
```

### 4. Script will automatically restore the session

During execution, the script will automatically:
- Extract the exported account
- Restore your gdrive session
- Authenticate without user interaction

This allows fully automated uploads to your Google Drive.

## 🔧 Manual Installation

If you prefer manual installation:

1. Copy any script to `/usr/local/bin`:
   ```bash
   sudo cp scripts/flutter-helper /usr/local/bin/
   ```

2. Make it executable:
   ```bash
   sudo chmod +x /usr/local/bin/flutter-helper
   ```

## 🤝 Contributing

1. Add your script to the `scripts/` directory
2. Make it executable: `chmod +x scripts/your_script`
3. Test locally using one of the methods above
4. Update this README with script description
5. Submit a pull request

## 📄 License

[Add your license here]

## 💡 Tips

- Scripts are automatically executable after installation
- Use `which script_name` to verify installation location
- Run `./install.sh` again to update installed scripts after pulling changes

---

## 👨‍💻 Hire Me

If you like automating boring stuff as much as I do, let's build something amazing together—I promise to bring the scripts AND the coffee. ☕

📧 **Email:** habil0105@gmail.com  
💼 **LinkedIn:** [linkedin.com/in/habil0105](https://www.linkedin.com/in/habil0105/)