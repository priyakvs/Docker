#!/bin/bash
mkdir -p output
cd output
if [ -f "result.txt" ]
then
	rm "result.txt"
fi
echo "---------------------------------------------------------------------------------" > result.txt
echo "File names of all text files at location /home/data and word count of each file:" >> result.txt
cd ../data
wc -w *.txt >> ../output/result.txt
echo "---------------------------------------------------------------------------------" >> ../output/result.txt
total=$(wc -w *.txt | tail -1 | awk '{print $1}')
file_highest=$(wc -w *.txt | sort -nr | head -2 | tail -1)
UID=$(id -u)
ip=$(ip route get 1 | awk '{print $7}')
echo "Grand total of number of words: $total" >> ../output/result.txt
echo "---------------------------------------------------------------------------------" >> ../output/result.txt
echo "File with highest word count: $file_highest" >> ../output/result.txt
echo "---------------------------------------------------------------------------------" >> ../output/result.txt
echo "IP Address of the machine: $ip" >> ../output/result.txt
echo "---------------------------------------------------------------------------------" >> ../output/result.txt
echo "User of machine: $(getent passwd $UID | cut -d ":" -f 5)" >> ../output/result.txt
echo "---------------------------------------------------------------------------------" >> ../output/result.txt
echo "Full name: Priyadharshini Subramanian" >> ../output/result.txt
echo "---------------------------------------------------------------------------------" >> ../output/result.txt
cd ../output
cat result.txt
