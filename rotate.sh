images=(*.jpg)
total=${#images[@]}
echo total $total
count=0
for image in "${images[@]}"; do 
    if (($count%2 == 0))
    then
         echo count $count
         convert "$image" -rotate 180 ./tmp/"$(basename "$image")";
         rm "./$image"
    fi;
    count=$(( count + 1  ));
done

