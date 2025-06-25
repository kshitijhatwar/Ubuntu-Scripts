read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

if [ "$num1" -ge "$num2" ] && [ "$num1" -ge "$num3" ]; then
    echo "Largest number is: $num1"
elif [ "$num2" -ge "$num1" ] && [ "$num2" -ge "$num3" ]; then
    echo "Largest number is: $num2"
else 
    echo "Largest number is: $num3"

fi

