
read -p "Enter a file name you wantt to archieve in .tar.gz format: " FNAME

BN=$(basename "$FNAME")

tar -czf "${BN}-$(date +%F-%H-%M-%S).tar.gz" "$FNAME"

#c  Create a new archive

#z  Compress the archive with gzip

#f  Specify the archive file name