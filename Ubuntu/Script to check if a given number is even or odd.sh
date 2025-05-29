
read -p "enter a number: " NUM

if (( NUM % 2 == 0)); then
        echo "$NUM is even"
else
        echo "$NUM is odd"
fi
