# 🧰 Priyanshu's Ultimate Linux Setup

This is my personal Linux setup repository to back up and restore everything I need — shell configs, GNOME settings, Tilix terminal, and essential apps — all with a single script. Works great when moving to a new device or reinstalling OS.

---

## 📦 What's Inside?

- `.bashrc` – shell customizations
- `.gitconfig` – Git setup
- `dconf-settings.ini` – GNOME desktop layout, hotkeys, preferences
- `tilix-settings.dconf` – Tilix terminal colors, shortcuts, layout
- `setup.sh` – A menu-based script to restore all settings
- `install.sh` – Optional app installer
- `README.md` – You’re reading it :)

---

## ⚡ Quick Start

### 1️⃣ Clone This Repo

```bash
git clone https://github.com/Priyanshu-1477/my-setup.git
cd my-setup
```

### 2️⃣ Run the Setup Script
```bash
chmod +x setup.sh
./setup.sh
```

## You’ll see a menu like:

```
Choose what you want to restore:
1. Shell (.bashrc, .gitconfig)
2. GNOME desktop settings
3. Tilix terminal settings
4. App installs (tilix, git, neovim, curl, etc.)
5. All of the above
Pick an option and your system will be configured automatically.
```

### 🔄 How to Backup Your Current Configs
Whenever you make changes you want to save:

## 🔁 Export GNOME Settings
```bash
dconf dump / > dconf-settings.ini
```

## 🔁 Export Tilix Settings
```bash
dconf dump /com/gexperts/Tilix/ > tilix-settings.dconf
```

## 🔁 Update Dotfiles
```bash
cp ~/.bashrc bashrc
cp ~/.gitconfig gitconfig
```

## 🔁 Push to GitHub
```bash
git add .
git commit -m "Updated settings"
git push
```

### 🗂️ Folder Structure
```perl
my-setup/
├── bashrc                  # Shell settings
├── gitconfig               # Git configuration
├── dconf-settings.ini      # GNOME desktop layout
├── tilix-settings.dconf    # Tilix terminal preferences
├── setup.sh                # Main setup script
├── install.sh              # Optional installer for essential apps
└── README.md               # This guide
```

### 💡 Ideas for Future Additions
1. VS Code extensions and settings

2. GNOME extensions and themes

3. Neovim or Zsh configs

4. Wallpaper + appearance backup

5. Crontab / aliases

### 🛠 Requirements
Ubuntu/Zorin or any Debian-based Linux

bash, git, and dconf available

Internet for downloading packages (e.g., Tilix, curl, etc.)

### 📜 License
MIT License – Free to use, modify, and share.
Crafted with ❤️ by Priyanshu Raj

### 🙋 Need Help?
If you're not sure how to add more configs or automate something new, feel free to create an issue or fork the repo to personalize your version!


