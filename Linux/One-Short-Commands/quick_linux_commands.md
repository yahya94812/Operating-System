# Linux Commands Reference

## File and Directory Management
* **tree** - Display directory structure in tree format
* **ls** - List files and directories
  * `ls -a` - Show hidden files
  * `ls -l` - Long format with details
* **cd** - Change directory
  * Example: `cd /path/to/directory`
* **pwd** - Print current working directory
* **mkdir** - Create new directory
  * Example: `mkdir new_folder`
* **rmdir** - Remove empty directory
* **rm** - Delete files or directories
  * `rm file.txt` - Delete file
  * `rm -r directory` - Delete directory recursively
  * `rm -rf directory` - Force delete without prompts
* **cp** - Copy files or directories
  * Example: `cp file.txt /destination/`
* **mv** - Move or rename files/directories
  * Example: `mv old_name.txt new_name.txt`
* **touch** - Create empty file(s)
  * Example: `touch newme.txt new_name.txt`
* **find** - Search for files or directories
  * Example: `find / -name "sample.txt"`
* **locate** - Quickly search for files
  * Example: `locate sample/`

---

## Viewing and Manipulating Files
* **cat** - Display file content
  * Example: `cat filename.txt`
* **more** - Paginate file output
  * Example: `more file.txt`
* **less** - Similar to more, allows backward navigation
  * Example: `less file.txt`
* **head** - Display first lines of file
  * `head file.txt` - Show first 10 lines (default)
  * `head -n 10 file.txt` - Show first 10 lines
* **tail** - Display last lines of file
  * `tail file.txt` - Show last 10 lines (default)
  * `tail -n 10 file.txt` - Show last 10 lines
* **nano / vi / vim** - Command-line text editors
  * Example: `nano file.txt`
* **wc** - Count words, lines, and characters
  * Example: `wc text.txt` - Prints number of lines, words, and bytes
* **diff** - Compare two files line by line
  * Example: `diff file1.txt file2.txt`
* **sort** - Sort lines in file
  * Example: `sort file.txt` - Print sorted content
* **uniq** - Filter unique or duplicate lines
  * Example: `uniq file.txt`

---

## System Information
* **uname** - Display system information
  * Example: `uname -a` - Show all system info
* **uptime** - Show system uptime
* **hostname** - Display or set system hostname
* **whoami** - Display current user
* **df** - Display disk space usage
  * `df -h` - Human-readable format (KB, MB, GB)
* **du** - Display directory/file size
  * `du -sh filename` - Summary in human-readable format (doesn't recurse into subdirectories)
* **free** - Display memory usage
  * `free -h` - Human-readable format
* **top** - Display active processes (interactive)
* **htop** - Interactive process viewer (if installed)
* **who** - Show logged-in users
* **id** - Display user ID and group information
  * Example: `id username`

---

## File Permissions and Ownership
* **chmod** - Change file permissions
  * Example: `chmod 755 file.sh`
* **chown** - Change file ownership
  * Example: `chown user:group file.txt`
* **ls -l** - Show detailed file permissions

---

## Networking
* **ping** - Check connectivity to host and measure round-trip time
  * Example: `ping google.com`
* **curl** - Transfer data from/to server
  * Example: `curl http://example.com`
* **wget** - Download files from web
  * Example: `wget http://example.com/file.zip`
* **ifconfig** - Display network configurations (deprecated, use `ip`)
* **ip** - Configure IP addresses
  * `ip addr` - Show IP addresses
* **netstat** - Display network connections (deprecated, use `ss`)
* **ss** - Show socket statistics and network connections
  * `ss -tuln` - Show TCP/UDP listening ports
* **scp** - Copy files over SSH
  * Example: `scp file.txt user@remote:/path/`
* **ssh** - Connect to remote server via SSH
  * Example: `ssh user@host`

---

## Process Management
* **ps** - Display currently running processes
  * `ps aux` - Show all processes with detailed info
* **kill** - Kill process by PID
  * Example: `kill <pid>`
* **killall** - Kill processes by name
  * Example: `killall firefox`
* **jobs** - List background jobs
* **bg** - Resume job in background
* **fg** - Resume job in foreground

---

## Package Management
* **apt** (Ubuntu/Debian)
  * `sudo apt list` - List available packages
  * `sudo apt update` - Update package list
  * `sudo apt upgrade -y` - Upgrade packages
  * `sudo apt install <package_name>` - Install package
* **yum / dnf** (RHEL/CentOS)
  * Example: `dnf install package-name`
* **snap**
  * `snap list` - List installed snap packages
  * `sudo snap install <package_name>` - Install snap package

---

## Compression and Archiving
* **tar** - Archive files
  * `tar -cvf new_folder.tar NewFolder/` - Create archive (c=create, v=verbose, f=file)
  * `tar -xvf archive.tar` - Extract archive
* **gzip / gunzip** - Compress or decompress files
  * Example: `gzip file.txt`
* **zip** - Create zip archives
  * `zip -r x.zip NewFolder/` - Create zip recursively
* **unzip** - Extract zip files
  * Example: `unzip archive.zip`
* **7z** - Handle 7zip archives (if installed)
  * Example: `7z a archive.7z file/`

---

## User Management
* **adduser / useradd** - Add new user
  * Example: `adduser <user_name>`
* **passwd** - Change user password
  * Example: `passwd <user_name>`
* **whoami** - Display current user
* **sudo** - Execute command as root
  * Example: `sudo apt update`
* **su** - Switch to another user account
  * Example: `su <user_name>`

---

## Miscellaneous
* **history** - Show command history
* **alias** - Create command shortcuts
  * Example: `alias ll='ls -la'`
* **date** - Display current date and time
* **clear** - Clear terminal screen
* **echo** - Display text or variables
  * Example: `echo "hello world"`