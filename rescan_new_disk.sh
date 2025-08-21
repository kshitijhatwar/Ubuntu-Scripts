for host in /sys/class/scsi_host/host*; do
  echo "- - -" | sudo tee $host/scan
done
