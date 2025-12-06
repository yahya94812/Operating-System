* free: with optional flags of -m (for megabytes), -g (for gigabytes), -h (for human-readable). used for checking memory usage.
    ```
                   total        used        free      shared  buff/cache   available
    Mem:           7.4Gi       5.8Gi       429Mi       1.1Gi       2.6Gi       1.7Gi
    Swap:          4.0Gi       714Mi       3.3Gi
    ```
    * used: shows used memory by apps and kernel.
    * free: shows free memory (completely unused).
    * shared: memory used by tmpfs (shared memory between processes) includes in used field.
    * buff/cache: Linux uses free RAM to speed things up by caching files. This RAM will be freed automatically if apps need it.
    * available: an estimate of how much memory is available for starting new applications, without swapping.

* df -h: df stands for "disk filesystem" (or less commonly, "disk free"). It shows the amount of disk space used and available on filesystems. or it says “Show me all mounted filesystems, no matter where they come from.”
    ```
    Filesystem      Size  Used Avail Use% Mounted on
    tmpfs           763M  2.1M  761M   1% /run
    /dev/sda4       292G  129G  148G  47% /
    tmpfs           3.8G   98M  3.7G   3% /dev/shm
    tmpfs           5.0M   12K  5.0M   1% /run/lock
    tmpfs           3.8G     0  3.8G   0% /run/qemu
    tmpfs           763M  132K  763M   1% /run/user/1000
    ```
    * Size: total size of the filesystem.
    * Used: amount of space used.
    * Avail: amount of space available.
    * Use%: percentage of space used.
    * Mounted on: mount point of the filesystem.
    * /dev/sda4: This is your primary Linux partition where your OS, apps, and files are stored. it lives in disk storage but all other filesystems (except this) live in RAM and are mounted in it.
    * tempfs: These are virtual filesystems stored in RAM, not on disk.
    * /dev/shm: Shared memory area used by programs. This is what contributes to the shared memory you saw in free -h (in RAM)
    * /run: Temporary filesystem for runtime data. It is cleared on reboot.
    * /run/lock: Temporary filesystem for lock files. It is cleared on reboot.
    * /run/qemu: Temporary filesystem for QEMU virtual machines. It is cleared on reboot.
    * /run/user/1000: Temporary filesystem for user-specific runtime data. It is cleared on reboot.
    * Linux can mount any filesystem anywhere in the directory tree. The mount point has nothing to do with what type of filesystem it is.
    * A filesystem is where data lives (disk, RAM, network). A mount point is where it appears in your directory structure.

* lsblk: lists all the partitions on real disk. it stands for "list block devices".

* uptime: 
    ```
        08:19:19 up 1:16, 1 user, load average: 0.91, 0.96, 0.91
    ```
    08:19:19 → current time
    up 1:16 → system has been running for 1 hour 16 minutes
    1 user → one logged-in session
    load average → system load over 1, 5, 15 minutes (about 0.9 → light load)

* Authentication logs in Linux record all auth-related events like logins, password changes, and sudo commands. Located at /var/log/auth.log. these logs help detect brute force attacks and unauthorized access attempts. Use tail /var/log/auth.log to view recent entries.

*  Use systemctl --type=service to list all active services with their status.

* use top and htop for real-time system monitoring