Booting Linux
Linux booting involves several stages: POST, MBR, GRUB, Kernel, Init, and GUI/CLI. The bootloader loads the kernel into memory, which detects hardware, loads drivers, mounts filesystems, starts system processes, and presents login prompts. GRUB configuration is managed through /etc/default/grub with settings like timeout and default boot options.

 Boot logs record all operations during system startup for troubleshooting. Use dmesg to view kernel ring buffer messages in real-time, or access logs in /var/log. Systemd uses journalctl for logging. Log levels range from emergency (system unusable) to debug messages.

 Boot Loaders
Boot loaders load the OS kernel into memory when systems start. Common Linux boot loaders include GRUB (modern, feature-rich with graphical interface) and LILO (older, broader hardware support). Boot loaders initialize hardware, load drivers, start schedulers, and execute init processes. Use sudo update-grub to update GRUB configuration