# Linux Commands

## File and Directory Management
* tree
* ls,ls-a,ls-l
* cd 
* pwd
* mkdir
* rmdir 
* rm, rm -r, rm -rf
* cp file.txt /destination/
* mv old_name.txt new_name.txt
* touch newme.txt new_name.txt
* find / -name "sample.txt"
* locate sample/
---
## Viewing and Manipulating Files
* cat filename.txt
* more file.txt, less file.txt, head file.txt, tail file.txt
* head -n 10 file.txt, tail -n 10 file.txt :display first/last 10 lines
* nano, vi, vim
* wc text.txt :print number of lines, no. of words, no of bytes
* diff file1.txt file2.txt :print diff between files line by line
* sort file.txt :print sorted content of the file.txt
* uniq file.txt :filter unique or duplicate lines
---
## System Information
* uname
* uptime
* hostname
* whoami
* df, df -h :display disk space usage
* du -sh filename :-s(does not recurse into subdirectories).-h: Human-readable format, displaying sizes in KB, MB, GB, etc.
* free, free -h :display memory usage
* top, htop :display active process
* who :shows login users
* id :display id and group info
---
## File Permissions and Ownership
* chmod 755 file.sh :change file permission
* chown user:group file.txt :change file ownership
* ls -l :show detailed file permissions
---
## Networking
* ping google.com :check connectivity with host, measure the time it takes for messages (packets) to go to the destination and return (round-trip time)
* curl example.com :transfer data from/to server
* wget http://example.com/file.zip :download files from web
* ip, ip addr :config ip
* ss, ss -tuln :display network connection(show socket statistic)
* ssh, ssh user@host :connect to remote server via ssh
---
## Process Management
* ps, ps aux :display current running process
* kill <pid> :kill process by pid
* killall firefox :kill process by name
* job :list backgroud jobs
* bg :resume job in background
* fg :resume job in foreground
---
## Package Management
* sudo apt list
* sudo apt update && sudo apt upgrade -y
* sudo apt install <package_name>
* snap list
* sudo snap install <package_name>
---
## Compression and Archiving
* tar -cvf new_folder.tar NewFolder/ {-cvf for creating, verbose mode (show file being processed), specify the file name of archive}
* zip -r x.zip NewFolder/
* unzip
---
## User Management
* adduser <user_name>
* passwd <user_name> :for changing password
* whoami
* sudo :execute commands as a root
* su <user_name>:switch to other account
---
## Others
* history
* alias ll = 'ls -la'
* date
* clear
* echo "hello world"
