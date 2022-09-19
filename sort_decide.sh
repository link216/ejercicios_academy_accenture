#!/bin/bash
FRUIT="$1"
count=0

while IFS= read -r line;
   do
        FRUTA=$line

   if [ ${FRUTA} = "Tomato" ] || [ ${FRUTA} = "Peach" ]
    then

           echo "i like ${FRUTA}es"
    else
           echo "i like ${FRUTA}s"
    fi
    count=$((count+1))
  done < $FRUIT
echo "there are $count fruits in total"
