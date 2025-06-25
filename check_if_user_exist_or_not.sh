read -p "Enter username" UN

if grep -i "$UN" /etc/passwd; then
    echo "Yes user found"
else
    echo "User not found"

fi







