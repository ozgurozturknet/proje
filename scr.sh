#!/bin/bash

shopt -s nocasematch

#if [ ! -f $1 ]
#then
#echo "gecersiz dosya"
#fi

for file in *.t1
do
if [[ -f $file ]]
then
while IFS= read -r line
do
if [[ $line == *"ErRoR"* ]]
then
echo "hata bulundu: $line"
fi
done < "$file"
fi
done




: '
while true
do
echo test
sleep 1
done
'

: '
while :
do 
read -r -p "bir sayi giriniz" sayi
[ "$sayi" == "7" ] && break
echo girdiginiz sayi: "$sayi"
done
'


: '
x=1

while [ $x -le 10 ]
do
echo $x
((x++))
done
'


: '
let
expr
sum
'
: '
read -p "sayi giriniz" sayi

for i in {2..$(expr $sayi - 1)}
do
if [ $(expr $sayi % $i) == 0 ]
then
echo
fi
done
echo
'









# < == -lt
# > == -gt
# == -eq
# >= -ge
# <= -le
# != == -ne
: '
var="5"
var2="10"
'

: '
-e == bu dosya mevcut mu?
-r == dosya okunabilir mi?
-w == dosya yazilabilir mi?
-x == dosya calistirilabilir mi?

-f == bu bir dosya mi?
-d == bu bir dizin mi?
'

: '
read -p "bir sayi giriniz" sayi

if [ $sayi -gt 20 ] && [ $sayi -lt 40 ] 
then
echo "girdiginiz sayi 20'denu buyuk ve 40'tan kucuktur"
elif [ $sayi -le 20 ] || [ $sayi -ge 40 ]
then
echo "girdiginiz sayi 20'den kucuk veya esit, ya da 40'tan buyuk veya esit"
else
echo "gecersiz sayi"
fi
'

: '
for i in {1..10}
do
echo "sayi: $i"
done
'

: '
for file in *.asd
do
if [ -f $file ] || [ -d $file ]
then
echo "file: $file"
fi
done
'




