#1/bin/bash

echo -e "\e[31m hello world \e[0m"
echo -e "hello world"
echo -e "\e[33m hello world"
echo -e "\e[34m hello world"

for((i=1; i<=5; i++))
do
  echo -e "\e[31m $i \e[0m"
done

for((i=6; i<=10; i++))
do
  echo -e "\e[32m $i \e[0m"
done

for((i=11; i<=15; i++))
do
  echo -e "\e[34m $i \e[0m"
done

for((i=16; i<=20; i++))
do
  echo -e "\e[35m $i \e[0m"
done