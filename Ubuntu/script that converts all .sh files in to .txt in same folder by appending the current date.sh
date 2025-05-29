DATE=$(date +%F)

TD="/home/"

for FILE in "$TD"*.sh; do

        [ -e "$FILE" ] || continue

        BN=$(basename "$FILE" .sh)

        mv "$FILE" "${TD}${BN}_${DATE}.txt"
done


echo "All scripts has been changed to txt file"
