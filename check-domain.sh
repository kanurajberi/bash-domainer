#! /bin/bash

do_query () {
    dig "$1" +noquestion +nostat +noanswer +noauthority 2> /dev/null
}

get_answers_number () {
    local res=$(do_query "$1")
    res=${res##*ANSWER: }
    echo "${res%%,*}"
}

# Unregistered domains saved in file
file="unregistered.txt"
echo "Results will be saved in $file"

for adr in {b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z}a{b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z}a
do
    name="$adr.com"
    printf "Checking %s ...\r" "$name"
    whois $name | egrep -q '^No match|^NOT FOUND|^Not fo|AVAILABLE|^No Data Fou|has not been regi|No entri'
          if [ $? -eq 0 ]; then
              echo "$name : available" 
		echo "$name" >&3
          fi
done 3>| "$file"
