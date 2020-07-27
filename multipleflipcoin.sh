#!/bin/bash -x
flipcoinhead=1;
flipcointail=2;
Heads=0;
Tails=0
for((i=0;i<100;i++))
do
coin_Check=$(($(($RANDOM%2))+1))
 case $coin_Check in
 $flipcoinhead)
  Heads=$(($Heads+1))
  ;;
  $flipcointail)
  Tails=$(($Tails+1))
  ;;
esac
done
echo $Heads
echo $Tails
