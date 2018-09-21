echo -n "Enter name of file containing usernames: "
read file
while read user
    do
      sudo docker stop $user
      sudo docker rm $user
    done < $file
