array=()
for((i=1;i<=100;i++))
do
	if(($i%11==0))
	then
		array+=($i)
	fi
done
echo "Array of two same digit number is : ${array[*]} "
