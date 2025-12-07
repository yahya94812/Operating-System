 Popular filesystems include EXT4 (robust for Linux volumes), FAT32 (compatible with all OS for removable media), NTFS, and Btrfs. Each has specific advantages and use cases. Use df -T command to display filesystem types, disk space usage, and mounted device information.

 * An inode (index node) is a data structure in Linux filesystems that stores metadata about files and directories except their names and actual data. Contains file size, owner, permissions, timestamps, and more. Each file has a unique inode number for identification.
* ls -i file_name

* Filesystems define how files are stored and organized on Linux storage disks, ensuring data integrity, reliability, and efficient access.
* All files start from root directory '/'.

* Mounting in Linux attaches filesystems to specific directories (mount points) in the directory tree, allowing the OS to access data on storage devices. The mount command performs this operation. Example: mount /dev/sdb1 /mnt mounts second partition to /mnt directory. The /mnt directory is conventionally used for temporary mounting operations

LVM (Logical Volume Manager)
LVM provides logical volume management through device mapper framework, offering flexible disk management with resizing, mirroring, and moving capabilities. Three levels: Physical Volumes (PVs - actual disks), Volume Groups (VGs - storage pools), and Logical Volumes (LVs - carved portions). Create with pvcreate, vgcreate, and lvcreate commands. Essential for enterprise storage systems.

Adding Disks
Adding disks in Linux involves partitioning, creating filesystems, and mounting. Use lsblk to list devices, fdisk /dev/sdX to create partitions, mkfs.ext4 /dev/sdX1 to create filesystems, and mount /dev/sdX1 /mount/point to mount. This process prepares new storage devices for seamless integration into the Linux filesystem hierarchy.

Swap space extends physical memory by using disk storage when RAM is full.
Swap can exist as dedicated partitions or regular files. Create with fallocate, mkswap, and swapon commands