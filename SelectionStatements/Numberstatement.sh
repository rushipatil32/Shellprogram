
#!/bin/bash -x

	diff=$((1000-100+1))
	var1=$(($((RANDOM%diff))+100))
	var2=$(($((RANDOM%diff))+100))
	var3=$(($((RANDOM%diff))+100))
	var4=$(($((RANDOM%diff))+100))
	var5=$(($((RANDOM%diff))+100))

	if [ $line -gt $max ]
then
max=$line
else
continue
fi
echo $max > max_number
done
echo "Miximum number in this file: " `cat max_number`
rm -rf max_number 
min(){
cat $number |sed '/^$/d' | while read line; do
if [ $line -lt $min ]
then
min=$line
else
continue
fi
echo $min > min_number
done
echo "Minimum number in this file: " `cat min_number`
rm -rf min_number
}max
min
