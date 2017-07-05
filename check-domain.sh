#! /bin/bash

# Unregistered domains saved in file
file="unregistered.txt"
echo "Results will be saved in $file"

for adr in {b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z}a{b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z}a #scheme
do
	name="$adr.com"
	printf "Checking %s ...\r" "$name"
	whois $name | egrep -q '^No match|^NOT FOUND|^Not fo|AVAILABLE|^No Data Fou|has not been regi|No entri'
	if [ $? -eq 0 ]; then
		echo "$name : available" 
		echo "$name" >&3
	fi
done 3>| "$file"
