#!/bin/bash -x
flipcoinhead=1;
flipcointail=2;
Heads=0;
Tails=0;
maxCount1=0;
maxCount2=0;
while [[ $maxCount1 -ne 21 || $maxCount2 -ne 21 ]]
do
coin_Check=$(($(($RANDOM%2))+1))
 case $coin_Check in
 $flipcoinhead)
  maxCount1=$(($maxCount1+1))
  ;;
  $flipcointail)
  maxCount2=$(($maxCount2+1))
  ;;
esac
done
if [ $maxCount1 -eq $maxCount2 ]
then
 echo "it's a Tie"
elif [ $maxCount1 -gt $maxCount2 ]
then
 echo "Heads won the game"
  HeadsWinMargin=$(( $maxcount1 - $maxcount2 ))
 echo $HeadWinMargin
else
 echo"Tails won the game"
 TailsWinMargin=$(( $maxcount2 - $maxcount1 ))
 echo $TailWinMargin
fi
