* Package management handles software installation, updates, configuration, and removal in Linux. It manages collections of files and tracks software prerequisites automatically. Essential for efficient application management.
Common package managers include apt (Debian-based),
Repositories are storage locations containing collections of software packages for Linux distributions. 
* sudo apt install (install packages from repositories)
* sudo apt update (update package lists in local cache from repositories)

* Snap is a modern Linux package management system by Canonical providing self-contained packages with all dependencies included. Snaps run consistently across different Linux distributions, install from Snapcraft store, and update automatically. 
* Install packages using sudo snap install [package-name]
sudo apt-get update && sudo apt-get install package-name
Package management eliminates manual compilation from source code. Root permissions required for installation.
* an audit is a comprehensive, independent evaluation of a software project, its code, or its development processes to assess compliance with standards, regulations, and best practices
Listing installed packages helps with auditing software and deployment automation.
sudo apt list --installed
* gnome-software is a graphical package manager for GNOME desktop environment, allowing users to browse, install, and manage software applications easily through a user-friendly interface.
* synaptic is a graphical package management tool for Debian-based systems, providing an easy-to-use interface for installing, updating, and removing software packages.
Linux package management handles installing, removing, and upgrading pre-compiled software modules. Different distributions use specific package managers: apt (Debian/Ubuntu),
