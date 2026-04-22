
Problem 1: Basic Linux File Commands
The basic file-related commands are used to navigate and manipulate the file system.

pwd: Prints the current working directory.


cd: Changes the current directory.


ls: Lists the contents of a directory.


mkdir: Creates a new directory.


rmdir: Removes an empty directory.


cp: Copies files or directories.


mv: Moves or renames files or directories.


touch: Creates an empty file or updates the timestamp of an existing file.


rm: Removes a file or directory.


Execution Steps:
List all contents of the home directory: Run ls -la ~ to view all files (including hidden ones) with detailed permissions and ownership.


Create a directory of your name: Run mkdir my_name.


Create a blank text file: Run cd my_name followed by touch blank.txt.


Copy and Move:
To copy the file: cp blank.txt name2.txt. The cp command duplicates the original file.


To move/rename: mv blank.txt name3.txt. The mv command removes the original file from its location and places it in the new destination (or simply renames it).


Delete files and directory: Run rm name2.txt name3.txt to delete the files, then cd .. to step back, and rmdir my_name to delete the empty directory.


Display working directory: Run pwd.


Problem 2: Text File Operations
Create two blank files: Run touch f1.txt f2.txt.


Append details to f1.txt: Run cat >> f1.txt. Type your name, roll number, and subject. Press Ctrl + D to save and exit.


Append details to f2.txt: Run cat >> f2.txt. Type your Department, College, and City. Press Ctrl + D to save and exit.


Display contents: Run cat f1.txt f2.txt to print both to the terminal.


Combine files: Run cat f1.txt f2.txt > f3.txt to merge them into a new file.


Problem 3: Manuals, Viewing, and Piping
Create manual pages file: Run man ls > manuals.txt and then man cat >> manuals.txt to combine them using the redirect command.


Demonstrate top and bottom (head/tail): To view the "top" of a file, run head file.txt (defaults to 10 lines) or head -n 5 file.txt. To view the "bottom", run tail file.txt or tail -n 5 file.txt.


Demonstrate sort, wc, and grep:


sort file.txt (sorts lines alphabetically).
wc -l file.txt (counts the number of lines).
grep "keyword" file.txt (searches for specific text inside the file).
Piping: Piping (|) takes the output of one command and feeds it as the input to another.


Execution: ls -l | grep ".txt" (Lists directory contents and filters only the ones containing ".txt").
Problem 4: Vi-Editor
The Vi-editor is a powerful command-line text editor used in Linux.

Commands:


Cut/Delete a line: dd
Copy a line: yy
Paste: p
Move around: Use h (left), j (down), k (up), l (right).
Demonstration: Run vi demo.txt. Press i to enter Insert Mode and type text. Press Esc to return to Command Mode, where you can use the above commands. Type :wq to save and quit.


Problem 5: File Permissions
Run touch filepermission.txt.

Using letters: Run chmod u=rwx,g=rx,o=r filepermission.txt. This sets user (u) to read/write/execute, group (g) to read/execute, and others (o) to read.


Using numbers: Run chmod 754 filepermission.txt. (User: 4+2+1=7, Group: 4+1=5, Other: 4).


Problem 6: Managing Users and Groups
Managing users and groups involves creating and removing accounts, and assigning permissions to organize system access.

Add user: sudo useradd practexam.


Change password: sudo passwd practexam. Enter the new password when prompted.


Add user to a group: First, create a group: sudo groupadd newgroup. Then, assign the user: sudo usermod -aG newgroup practexam.


Delete user and group: sudo userdel practexam and sudo groupdel newgroup.


Problems 7 & 8: Software Management
Software management involves installing, updating, and removing application packages.

Using Synaptic (GUI):
Open Synaptic Package Manager. Search for "vlc", right-click and "Mark for Installation", then click "Apply".


To remove, right-click "vlc" -> "Mark for Complete Removal" -> "Apply".


Using apt (CLI):
Install: sudo apt update followed by sudo apt install vlc.


Remove & Purge: sudo apt purge vlc to remove the software and its configuration files.


Problem 9: Network Troubleshooting Commands
These tools help diagnose and configure network connections.

ifconfig: Displays network interface configuration (e.g., ifconfig -a).


ping: Tests connectivity to a host (e.g., ping google.com).


netstat: Displays network connections and routing tables (e.g., netstat -tuln).


route: Shows or manipulates the IP routing table (e.g., route -n).


host: Performs DNS lookups (e.g., host google.com).


arp: Manipulates the system ARP cache (e.g., arp -a).


traceroute: Traces the path packets take to a network host (e.g., traceroute google.com).


hostname: Shows or sets the system's hostname (e.g., hostname -I for IP).


Problem 10: Positive/Negative/Zero Script
Create script10.sh:


Bash


#!/bin/bash
read -p "Enter a number: " num
if [ "$num" -gt 0 ]; then
    echo "Positive"
elif [ "$num" -lt 0 ]; then
    echo "Negative"
else
    echo "Zero"
fi


Problem 11: Digit Counting Script (Case Structure)
Create script11.sh:


Bash


#!/bin/bash
read -p "Enter a number: " num
case ${#num} in
    1) echo "Single digit" ;;
    2) echo "Double digit" ;;
    3) echo "Three digit" ;;
    4) echo "Four digit" ;;
    *) echo "Invalid or more than four digits" ;;
esac


Problem 12: Directory Check Script
Create script12.sh:


Bash


#!/bin/bash
read -p "Enter directory name: " dirname
if [ -d "$dirname" ]; then
    echo "Directory already exists!"
else
    mkdir "$dirname"
    echo "Directory created."
fi


Problem 13: Factorial Using For Loop
Create script13.sh:


Bash


#!/bin/bash
read -p "Enter a number: " num
fact=1
for (( i=1; i<=num; i++ ))
do
    fact=$((fact * i))
done
echo "Factorial is $fact"


Problem 14: Factorial Using While Loop
Create script14.sh:


Bash


#!/bin/bash
read -p "Enter a number: " num
fact=1
i=1
while [ $i -le $num ]
do
    fact=$((fact * i))
    i=$((i + 1))
done
echo "Factorial is $fact"


Problem 15: Login Details Script
Create script15.sh:


Bash


#!/bin/bash
echo "All user accounts:"
cat /etc/passwd | cut -d: -f1  # [cite: 103]

echo "Number of logged-in user accounts:"
who | wc -l  # [cite: 104]

echo "Names of currently logged-in users:"
who | cut -d' ' -f1 | sort | uniq  # [cite: 105]

echo "Groups current user belongs to:"
groups  # [cite: 106]


Problem 16: System Configuration Script
Create script16.sh:


Bash


#!/bin/bash
echo "Logged user: $USER"
echo "Login name: $LOGNAME"
echo "Current shell: $SHELL"
echo "Home directory: $HOME"
echo "Operating system type: $(uname -o)"
echo "Current path setting: $PATH"
echo "Current working directory: $(pwd)"


Problem 17: Apache Server
Step 1: Install Apache Open your terminal and run the installation command:
Bash
sudo apt update
sudo apt install apache2

Step 2: Start and Enable the Service Start the service right now, and enable it so it starts automatically upon system reboot:
Bash
sudo systemctl start apache2
sudo systemctl enable apache2

Step 3: Verify the Service Status Check that the server is running without errors:
Bash
sudo systemctl status apache2

(Press q to exit the status screen).
Step 4: Configure the Firewall Allow external web traffic to reach your server:
Bash
sudo ufw allow 'Apache'

Step 5: Demonstrate the Server Open your web browser and navigate to http://localhost. You should see the default Apache "It works!" page.
Step 6: Explore the Configuration (Optional)
Edit the web page: sudo nano /var/www/html/index.html
Check error logs: sudo tail -f /var/log/apache2/error.log

Problem 18: Telnet Server
Step 1: Install Telnet and xinetd Install the necessary packages:
Bash
sudo apt install telnetd xinetd

Step 2: Restart the Daemon Telnet relies on inetd or xinetd to manage its connections. Restart the service to apply the installation:
Bash
sudo systemctl restart inetd

(Note: On some modern systems, this might just be managed by xinetd. If inetd fails, run sudo systemctl restart xinetd).
Step 3: Verify the Connection Port Check if your system is actively listening for Telnet connections on port 23:
Bash
ss -tulpn | grep 23

Step 4: Demonstrate the Connection Initiate a connection to your own machine:
Bash
telnet localhost

Log in with your standard Linux username and password.

Problem 19: FTP Server
Step 1: Install vsftpd Install the Very Secure FTP Daemon:
Bash
sudo apt install vsftpd

Step 2: Configure the Server Settings Open the configuration file in a text editor:
Bash
sudo nano /etc/vsftpd.conf

Find and update the following lines to match these values (remove the # at the beginning of the line if it exists to uncomment them):
anonymous_enable=NO
local_enable=YES
write_enable=YES Save and exit (in Nano, press Ctrl+O, Enter, then Ctrl+X).
Step 3: Restart the Service Apply your configuration changes:
Bash
sudo systemctl restart vsftpd

Step 4: Configure the Firewall Open the ports required for FTP traffic:
Bash
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp

Step 5: Demonstrate the Connection Connect to your local FTP server:
Bash
ftp localhost

Log in with your standard username and password, then try running a command like ls to list your files.

