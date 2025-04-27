
cat /etc/passwd | grep USER

#making user directory in /home
sudo mkdir /home/USER

#changing ownership to USER of /user directory
sudo chown USER:USER /home/USER

#giving read, write, execuite permissions of /user directory to USER only
sudo chmod 700 /home/USER

# In Linux, /etc/skel/ is a directory that typically contains default configuration files and directories for new user accounts. When a new user is created, the files in /etc/skel/ are copied into the new user’s home directory.
sudo cp -r /etc/skel/. /home/USER/

#the command will not just change the ownership of the specified directory (/home/USER), but also all of the files and subdirectories within that directory.
sudo chown -R USER:USER /home/USER

#the home directory for the user USER will be changed to /home/USER
sudo usermod -d /home/USER USER

#cheking ownership, permissions of all files in /home/USER
ls -la /home/USER

#This command sets /bin/bash as the default login shell for the user
sudo chsh -s /bin/bash USER

