#! /bin/bash 

# display list of arguments on multiply line 
echo $@
# display list of arguments on a single line  
echo $*
# display the first argument 
echo $1
# display the number of arguments 
echo $#

if [ $# -le 4 ]
then
       echo " .... execute command "	
# Declear the name arguments 
name=$@
# For a name in the list of arguments display each name 
 for name in $2;
 do 
 	echo "Hello, $name!"
 done
else 
       echo "Sorry , limit exceeded"
fi        

  x=RANDOM % 40 + 1
   x=RANDOM % 40 + 1

