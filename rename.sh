for file in $(ls)
do
    newFile="$(echo $file | sed 's/\(.*\)\(S[[:digit:]]*E[[:digit:]]*\)\(.*\)/\2.\1\3/gI' | sed 's/\.\.//')"
    mv $file $newFile  
done
