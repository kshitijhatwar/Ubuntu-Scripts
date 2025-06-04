DATE=$(date +%F)

TD="/home/"

for FILE in "$TD"*.sh; do
        
        #check if there is.sh file
        [ -e "$FILE" ] || continue

        # extracting basename removing all /
        BN=$(basename "$FILE" .sh)

        mv "$FILE" "${TD}${BN}_${DATE}.txt"
done


echo "All scripts has been changed to txt file"
