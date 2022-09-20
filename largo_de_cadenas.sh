#!/bin/bash

myfile=$1

function longstring (){
while IFS= read -r line || [[ -n $line ]]; do

#
# Counting characters
char=$(echo -n "$line" | wc -c)

# Output
echo "$char this string: $line is the largest"
done < $myfile | sort -rg | head -1
}

function top10 (){
echo "### this is the top 10 of words ###"
cat $myfile | sort | uniq -c | sort -rg | head

}

function percent (){
        total=$(wc -l $myfile | cut -d " " -f 1)
        wordrep=$(grep "Lepidus" $myfile | wc -l)
        porcentaje=$((total*wordrep/100))
        echo "word Lepidus has a percentage of: $porcentaje % from the total of words "

}

### main ####
top10
longstring
percent
