key words: users, groups, permissions, ownership

# User Management in Linux
* useradd --help
* sudo useradd -m -s /bin/bash temp-yah
* ls /home
* sudo su temp-yah
* whoami
* exit
* cat /etc/passwd | grep temp-yah
    * output: ```temp-yah:x:1001:1001::/home/temp-yah:/bin/bash```


* usermod --help
* updating username along with home directory name:
* cat /etc/passwd
* ls /home
* sudo usermod -l new-yahya old-yahya
* cat /etc/passwd | grep new-yahya
    * output: ```new-yahya:x:1001:1001::/home/old-yahya:/bin/bash```
* updating home directory name:
* sudo mv /home/old-yahya /home/new-yahya
* sudo usermod -d /home/new-yahya new-yahya (it changes home directory path only)
* OR (in one command):
* sudo usermod -d /home/new-yahya -m new-yahya (it moves content from old to new home directory along with changing home dir path)

* pkill -u new-yahya (to kill all processes of the user before deleting)
* ps -u new-yahya (to check if any process is running by that user)
* sudo userdel -r new-yahya (to delete user along with home directory)
* cat /etc/passwd | grep new-yahya (to confirm user deletion)
* ls /home (to confirm home directory deletion)

# Group Management in Linux
* sudo means super user do
* User management in Linux uses groups to organize users and manage permissions efficiently
* Users can belong to multiple groups, enabling precise privilege management. Commands like groupadd, groupdel, groupmod, usermod, and gpasswd manage groups effectively
* chmod (change permissions), chown (change owner), and chgrp (change group).

* sudo is a group(collection of users) that has elevated privileges i.e that users can use sudo(root level access) command
* generally root user have no password and it is usually not accessed directly. Instead, users in the sudo group can execute commands with root privileges by prefixing them with sudo. i.e when you prefix sudo(super do) it runs as root user
* while accessing sudo(only if you are in sudo group), it will ask for your own user password for security reasons(root usually have no password and only accessed by users in sudo group)
* for a new created user account with password
* to list in which groups a user(logged in) is present use "groups" command
* View all groups and their members "getent group" This is the recommended and most complete method.
* Or view the /etc/group file directly "cat /etc/group"
* format "group_name : password_placeholder : GID : user1,user2,..."
* to add a user in a group use "sudo usermod -aG groupname username"
* to remove a user from a group use "sudo usermod -rG groupname username"
* to add a new group use "sudo groupadd groupname"
* to delete a group use "sudo groupdel groupname"

* for user info "cat /etc/passwd | grep username"
* format "username : password_placeholder : UID : GID : user_info : home_directory : shell"
* for group info "cat /etc/group | grep groupname"
* format "group_name : password_placeholder : GID : user1,user2,..."

On Linux, a file belongs to exactly ONE group (usually primary group which have same name as user), not multiple.
Even if you (the file’s owner) are in groups "team" and "bosses", that does not mean the file belongs to both groups.
sudo usermod -aG yahya new-yahya to add user in a group
When you create a file:
Owner = the user who created it
Group = your primary group at the moment of creation (usually your login group)

so the owner only can change the group of the file using "chgrp groupname filename" or "chown :groupname filename"
* only root user or sudo user can change the owner of the file using "chown username filename"

1. Change the owner
sudo chown newowner filename
Example:
sudo chown alice temp.txt
Now alice becomes the owner of temp.txt.

🔹 2. Change the group
Use : with an empty owner:
sudo chown :newgroup filename
Example:
sudo chown :team temp.txt
This sets the file’s group to team.

Linux permissions control file and directory access for users, groups, and others with read, write, and execute types. Commands include chmod (change permissions), chown (change owner), and chgrp (change group).
