file=$1
if [ -f  "$file" ]; then
c=0
while read words; do
for word in ${words[@]}; do
if [ "$word" == "$2" ]; then
((c++))
fi
done
done < $file
echo "there are $c words"
else
echo "there is not such directory"
fi
