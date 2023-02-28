#!/bin/bash
 
#Suraya Malek
#ITP270
#CLI Redirection Solution Assignment

#Create a file
touch Rivers_List.txt

#Add five river names to it
#Make sure you are adding "Amazon river" to the list
echo -e "Amazon River\n" > Rivers_List.txt 
echo -e "Nile River\n"   >> Rivers_List.txt
echo -e "Yangtze River\n" >> Rivers_List.txt
echo -e "Danube River\n" >> Rivers_List.txt 
echo -e "Potomac River\n" >> Rivers_List.txt
echo -e "Potomac River\n" >> Rivers_List.txt

#Replace the word "amazon" with "ohio"
sed 's/Amazon/Ohio/g' Rivers_List.txt > New_Rivers_List.txt

#Sort the river names alphabetically
sort New_Rivers_List.txt > New_Rivers_List_v2.txt

#Use command to filter out duplicates
uniq New_Rivers_List_v2.txt > New_Rivers_List_v3.txt
 
#Compare the original file and the modified copy
diff Rivers_List.txt New_Rivers_List_v3.txt


One-liner
touch Rivers_List.txt && echo -e "Amazon River\nNile River\nYangtze River\nPotomac River\nDanube River\nPotomac river" > Rivers_List.txt && sort Rivers_List.txt | uniq > New_Rivers_List2.txt | sed 's\Amazon\Ohio\g' New_RiversList_v2.txt > New_RiversList_v3.txt && diff New_Rivers-List.txt New_Rivers_List_v3.txt

