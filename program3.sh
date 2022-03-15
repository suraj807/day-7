# Extend the Prime Factorization Program to store all the Prime Factors of a number n into an array and finally display the output.

echo "Enter any number you want to prime factorize : "
read n
if(($n==0 || $n==1))
then echo "There is no prime factor of $n"
else
	pf=()
	for((i=2;1<$n;i++))
	do
        	while(($n%$i==0))
        	do
			pf+=($i)
                	n=$(($n/$i))
        	done
	done
fi
echo "Array of all prime factor is :  ${pf[*]}"
