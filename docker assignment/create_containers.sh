echo -n "Enter name of file with usernames: "
read file
while read user
    do 
        sudo docker create -it --name $user temp_image /bin/bash
    done < $file
