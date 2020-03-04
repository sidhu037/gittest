#/bin/bash
echo "enter the first num : "
read num1
echo "enter the second num : "
read num2
n= "Y"
while [$n == "Y"]
do
echo "1.ADDITION"
echo "2.SUBSTRACTION"
echo "3.MULTIPLICATION"
echo "4.DIVISION"
echo "5.MODULUS"
read a
case $a in
1) Sum = 'expr $num1 + $num2'
echo "Sum is : $Sum"
;;
2) Sub = 'expr $num1 - $num2'
echo "Sub is : $Sub"
;;
3) Mult = 'expr $num1 * $num2'
echo "Mult is : $Mult"
;;
4) Div = 'expr $num1 / $num2'
echo "Div is : $Div"
;;
5) Mod = 'expr $num1 % $num2'
echo "Mod is : $Mod"
;;
*) echo "Invalid Choice"
esac
echo "Press Y to continue"
read n
if [$n = "n"]
then
exit
fi
done



