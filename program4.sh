# Write a Program to show Sum of three Integer adds to ZERO

echo "Enter number of element you want to insert in array : "
read n
echo "Enter array elements :"
for((b=0;b<n;b++))
do
        read a[$b]
done
echo "${a[*]}"
num=()
for((i=0;i<n;i++))
do
	no1=${a[$i]}
	for((j=$i+1;j<n;j++))
	do
        	no2=${a[$j]}
		for((k=$j+1;k<n;k++))
		do
        		no3=${a[$k]}
			sum=$(($no1+$no2+$no3))
			if(($sum==0))
			then
				array+=($no1 $no2 $no3)
			fi
		done
	done
done
echo "${array[*]}"
