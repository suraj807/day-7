
for((i=1;i<=10;i++))
do
	no[$i]=$(((RANDOM%900)+100))
	echo "Random number $i : ${no[$i]}"
done
echo
echo "Displaying all random numbers in array"
echo "${no[*]}"
echo

min=${no[1]}
sl=0
ss=${no[1]}
max=0

for j in ${no[*]}
do
	if(($j>$max))
	then
		sl=$max
		max=$j
	elif(($j>$sl))
	then sl=$j
	fi
	if(($j<$min))
        then
		ss=$min
		min=$j
	elif(($j<$ss))
	then ss=$j
      	fi

	#echo $j
done
echo "Maximum element in this array is : $max"
echo "Minimum element in this array is : $min"
echo "Second Smallest element in this array is : $ss"
echo "Second Largest element in this array is : $sl"
