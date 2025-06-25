#Find all .log files inside /var/log and copy them to /tmp/logbackup/.


#Only copies .log files directly inside /var/log (NOT subdirectories).
cp /var/log/*.log /tmp/logbackup

#Finds and copies .log files from /var/log and its subdirectories too.
find /var/log -type f -name "*.log" -exec cp {} /tmp/logbackup/ \;




#   -type f	  --        Only look for files (not directories)
#   -name "*.log" --	    Only select files that end with .log
#   -exec	      --        For every file found, run a command
#   cp {}	      --        Copy that file ({} means "the found file")
#   \;	          --        End of -exec command (must be escaped with \ so shell understands it)
