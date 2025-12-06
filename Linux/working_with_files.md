# Working with files
* touch for creating files, mv for moving files, cp for copying files, rm for removing files, and ls for listing files and directories

## File permissions
* permissions are assigned to files and directories
* it indicate who can read, write, execute
* 3 type of users 1. Owners 2. Groups 3. Others (have different set of permissions)

```
ls -la
-rwxr--r-- 1 root root 4096 Jan 1 12:00 filename
```

* first - indicate it is a file and it is d for directory
* x for execution
* -owner-groups-others
* User (u) – the owner
* Group (g) – users in the file’s group
* Others (o) – everyone else
  
```
chmod u+x file.sh   # Add execute to user
chmod go-w file.txt # Remove write from group and others
chmod a+r file.txt  # Add read for all (user, group, others)
```

* u, g, o, a : user, group, others, all
* +, -, = : add, remove, set exact permissions
* chmod 755 file.sh
* owner(user), groups, others are three type of file permissions
* The owner is the user who created the file or directory
* Each file is assigned to a group, and all users in that group share the same group permissions
* This allows collaborative access for users in the same group
* other : Refers to all other users on the system who are neither the owner nor in the assigned group.
* `-rwxr-xr-- 1 alice staff 1234 May 10 09:00 script.sh`
  * alice is the owner.
  * staff is the group.
  
## Archiving
* c – Create a new archive.
* v – Verbose mode; shows the files being added to the archive.
* f – File; specifies the name of the archive file (archive_name.tar).
* x – Extract the contents of the archive.
```
# To create a tar archive (tape archive) :
tar cvf archive_name.tar directory_to_archive/

# To extract a tar archive:
tar xvf archive_name.tar

# To create a gzip compressed tar archive:
tar cvzf archive_name.tar.gz directory_to_archive/

#To create a bzip2 compressed tar archive:
tar cvjf archive_name.tar.bz2 directory_to_archive/
```
* in Linux, archiving and compression are separate processes, hence tar to archive and gzip/bzip2 to compress

## Basic file operations
* `cp /path/to/original/file /path/to/copied/file`
* `mv /path/to/original/file /path/to/new/file`
* Remember that Linux commands are case sensitive

## Soft and hard links
*  soft (symbolic) and hard links are simply references to existing files that allow users to create shortcuts and duplication effects within their file system.
*  A hard link is a mirror reflection of the original file, sharing the same file data and inode number, but displaying a different name. It's vital to note that if the original file is deleted, the hard link still retains the file data.
*  a soft link, also known as a symbolic link, is more like a shortcut to the original file. It has a different inode number and the file data resides only in the original file. If the original file is removed, the symbolic link breaks and will not work until the original file is restored.
  
```
# Create a hard link
ln source_file.txt hard_link.txt

# Create a soft link
ln -s source_file.txt soft_link.txt
```
* you can also link directories same as files