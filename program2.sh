
echo "Enter number of element you want to insert in array : "
read n
echo "Enter array elements :"
for((i=0;i<n;i++))
do
	read array[$i]
done
for((i=0;i<n;i++))
do
	for((j=$i+1;j<n;j++))
	do
		if((${array[$i]}>${array[$j]}))
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "Array after soring in ascending order : "
for((i=0;i<n;i++))
do
        echo ${array[$i]}
done
echo
echo "Second smallest element in this array is :  ${array[1]}"
echo "Second largest element in this array is :  ${array[n-2]}"
