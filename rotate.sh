for szFile in ./*.jpg; 
do 
    convert "$szFile" -rotate 180 ./tmp/"$(basename "$szFile")";
done

