# Navigation basics

* man : for manual
* mv <source> <destination> : work as expected for both files, folders, renaming, source may be file of directory where destination is the location where you want to move your file or directory
* touch : for creating empty file
* echo "i will be back" > new_file.txt : for creating file with some text inside
* cat > new_file.txt : read from std input(from terminal) and redirect it to the file end file with the ctrl + D (to signal end-of-file on Unix-like systems)
* rm -i : for interactive deletion of file
* rmdir : for deleting empty dir
* rm -r : for deleting dir
* tree : for getting the tree of filesystem from pwd

## Directory hierarchy
### Filesystem Hierarchy Standards (FHS)
* it is a tree structure
* / : root dir top level of file system
* /home : user home dir
* /bin : essential bin executables
* /sbin : system administration binaries
* /etc : configuration files (full form is "et cetera" Latin)
* /var : variable data(log, spool files)
* /usr : user programs and data
* /lib : shared libraries
* /tmp : temporary files
---
