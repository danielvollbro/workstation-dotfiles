# 🔧 Unified Workstation Dotfiles

[![Chezmoi](https://img.shields.io/badge/Managed%20with-Chezmoi-blue?logo=gnu-bash)](https://www.chezmoi.io/)

> **One config to rule them all.**
> Unified configuration management for my headless compute nodes and physical clients.

## 📖 About
This repository manages the **user configuration** (dotfiles) for my Linux workstations. It uses [Chezmoi](https://www.chezmoi.io/) to handle configuration drift and ensure a consistent environment across different machines.

It employs **templating logic** to adapt configurations based on the machine's role (e.g., Headless Host vs. Physical Desktop).

## 🏗 Supported Environments

| Role | Hostname | Features |
| :--- | :--- | :--- |
| **Headless Host** | `workstation-headless` | Optimizations for Sunshine, Server-side gaming, Auto-start services. |
| **Desktop/Client** | `workstation-desktop` | Client-side tools, Power management for laptops/desktops. |

## ⚙️ How it works
The configuration adapts automatically using `.chezmoi.yaml.tmpl`.

* **Headless Machines:**
    * Automatically enables `sunshine` user service.
    * Sets specific KWin/Plasma rules for virtual displays.
* **All Machines:**
    * Installs common shell aliases (Zsh/Fish).
    * Configures Neovim, Starship, and Git.
    * Sets up Flatpak overrides.

## 🚀 Bootstrap / Installation
To provision a new machine (after OS installation):

```bash
# Initialize and apply configurations in one go
chezmoi init --apply <your-username>
```

## 📂 Repository Structure

```text
├── .chezmoi.yaml.tmpl    # Logic to detect machine type (Headless vs Desktop)
├── dot_config/
│   ├── sddm/             # Login manager themes
│   ├── sunshine/         # Streaming host config (Headless only)
│   ├── hyprland/         # Window manager config (Shared)
│   └── nvim/             # Neovim setup (Shared)
└── run_onchange_...      # Scripts that run when state changes (e.g., install packages)

```

---

*Managed with Chezmoi.*
