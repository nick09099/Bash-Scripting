#!/bin/bash

#Files and Directories

mkdir direct23

echo "Enter directory name to check"
read direct

if [ -d "$direct" ]
then
        echo "$direct exists"
else    
        echo "$direct doesn't exists"
fi

#Files and Directories

touch filename1

echo "Enter the file name to check"
read filename

if [ -f "$filename" ]
then
        echo "$filename exists"
else    
        echo "$filename doesn't exists"
fi

#Appending the file

echo "Enter the file name which you want to appeand"
read filename

if [ -f "$filename" ]
then
        echo "Enter the test that you want to append"
        read filetext
        echo "$filetext" >> $filename
else    
        echo "$filename doesn't exists"
fi

#Replacing the content in existing  file

echo "Enter the file name which you want to appeand"
read filename

if [ -f "$filename" ]
then
        echo "Enter the test that you want to append"
        read filetext
        echo "$filetext" > $filename
else    
        echo "$filename doesn't exists"
fi


#Reading the file line by line

echo "Enter the file name which you want to appeand"
read testfile

if [ -f "$testfile" ]
then
        while IFS= read -r line
        do
            echo "$line"
        done < $testfile
else    
        echo "$testfile doesn't exists"
fi

# Professional menus 

echo "Press any key to continue"

while [ true ]
do
    read -t 3 -n 1
if [ $? = 0 ]
then    
        echo "You have terminated the script"
        exit;
else
        echo "waiting for you to press any key!!!"
fi 

done

# Exp-2

select car in BMW MERC Ferrari mclaren rover
do  
    case $car in
    BMW)
            echo "BMW SELECTED";;
    MERC)
            echo "MERC SELECTED";;
    Ferrari)
            echo "Ferrari SELECTED";;
    mclaren)
            echo "mclaren SELECTED";;
    rover)
            echo "rover SELECTED";;
    *)  
            echo "Error! please select between 1..5";;
    esac
done


# Wait for filesystem events with inotifywait

mkdir -p newfold/  #The -p flag creates the directory only if it doesn't already exist.
inotifywait -m newfold/ >> events.log & # >> is for re-direction and & is to run the script in background.

#Intro to GREP

echo "Enter file name to search text from"
read filename

if [[ -f $filename ]]
then
    echo "Enter the text to search"
    read grepvar
    grep -i -n -c -v $grepvar $filename -wc
else
    echo "$filename doesn't exits"
fi

# intro to awk
echo "enter filename to print from awk"
read filename

if [ -f "$filename" ]
then
	awk '{print}' $filename #prints all content
        awk '/git/ {print}' $filename #prints only which line contains git
        awk '{print $1}' $filename #prints first line
        awk '{print $1 $2 $3}' $filename #prints 1st 2nd 3rd line
else 
	echo "$filename doesn't exist"
fi

# intro to sed

echo "enter filename to print from awk"
read filename

if [ -f "$filename" ]
then
	#Modifiying the exiting conectet replaicng small letter I to capital and redirecting output to file.
        sed -i 's/i/I/g' $filename >> test2.sh
else 
	echo "$filename doesn't exist"
fi
	
	