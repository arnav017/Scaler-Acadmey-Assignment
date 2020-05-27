git clone https://github.com/interviewbit-academy/segregate_photos.git
cd segregate_photos

list=$(ls)

for i in $list
do

  # Set '-' as the delimiter
  IFS='-'

  #Read the split words into an array based on delimiter
  read -a strarr <<< "$i"

  if [ ${strarr[0]} != "README.md" ]
    then
	mkdir -p ${strarr[0]}/${strarr[1]}
	mv "${strarr[0]}-${strarr[1]}-${strarr[2]}" "${strarr[0]}/${strarr[1]}/photo${strarr[2]}"
  fi

done

cd ..

