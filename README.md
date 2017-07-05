# bash-domainer
Simple tool to sort through lists of domain that follow certain naming schemes and save them in a file.

# Install 
Download the reposiory, and then ```cd``` into the folder. From there, simply enter ```./check-domain.sh``` and wait. The script will sort through all the possibilities, and save the available ones in a text file called 'unregistered.txt'.

# Usage 
This script queries through all domain names that use a naming scheme mentioned in the loop in the script, to find which ones are available. Currently, it is ```[all consonants]a[all consonants]a```, but this can be set to anything by the user. The default will loop through the following possibilities:
```
baba.com    
baca.com    
bada.com    
...
caba.com
caca.com
...
zaza.com
```
To change the scheme, just go to the line commented ```# scheme```, and replace the ```for...in``` loop's expression with whichever one you want. To try multiple possibilities, seperate them by a comma.
For example, if you enter ```ra{d,g,r}t```, the loop will test
```
radt.com
ragt.com
rart.com
```
   
# Dependancies
You must have Whois installed.

# Todo
1. Remove the dependancies.    
2. Add provisions for multiple Top-Level Domains.
3. [IMP] Enable user input

# Testing
Unfortunately, I have only tested it on Linux machines. Don't know how it would behave on MacOS, and believe it won't work at all on Windows.
