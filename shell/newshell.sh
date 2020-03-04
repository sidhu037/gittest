#/bin/bash
clear
sum=0
i="y"
echo "Enter one no."
read n1
echo "Enter second no."
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Modulus"
echo "Enter your choice"
read ch
case $ch in
    1)sum=`expr $n1 + $n2`
     echo "Sum ="$sum;;
    2)sub=`expr $n1 - $n2`
     echo "Sub = "$sub;;
    3)mul=`expr $n1 \* $n2`
     echo "Mul = "$mul;;
    4)div=`expr $n1 / $n2`
     echo "Div = "$div;;
    5)mod=`expr $n1 % $n2`
     echo "Mod = "$mod;;
    *)echo "Invalid choice";;
esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
exit
fi
done 
