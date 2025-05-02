#displays 5 largest files and folders(not sorted for files or directories) in current directory:
du -h | sort -h | tail -n 5


#displays 5 largest files in any directory:
find /etc -type f -exec du -h {} + | sort -h |tail -n 5


#displays 5 largest directories in any directory:
find /etc -type d -exec du -h {} + |sort -h |tail -n 5
