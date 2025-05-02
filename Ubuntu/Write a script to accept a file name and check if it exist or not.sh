# This will check if provided file is available in system  or not

read -p "Please provide filename you want to find: " FNAME

find / -type f -name "$FNAME"
