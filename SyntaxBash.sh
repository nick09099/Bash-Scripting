#! /bin/bash 

#Condition Statements
#If statments

count=20

if [ $count -eq 10 ]
then
  echo "The condition is true"
else 
    echo "The condition is false"
fi

#If and elif statment

if (( $count > 21 ))  
then
  echo "The condition is true"
elif (( $count < 9 ))
then
    echo "The condition is true"
else 
    echo "The condition is false"
fi

#Operators
# And Operator
#Example -1
age=23

if [ "$age" -gt 20 ] && [ "$age" -lt 20 ]  
then
  echo "The age is true"
else 
    echo "The age is false, not that old buddy!"
fi

#Example-2
if [ "$age" -gt 20 -a "$age" -lt 28 ]  
then
  echo "The age is true"
else 
    echo "The age is false, not that old buddy!"
fi

#Or operator

age=23

if [ "$age" -gt 29 -o "$age" -lt 20 ]  
then
  echo "The age is true"
else 
    echo "The age is false, not that old buddy!"
fi

#Example-2

age=23

if [[ "$age" -gt 29 || "$age" -lt 20 ]]  
then
  echo "The age is true"
else 
    echo "The age is false, not that old buddy!"
fi

#Loops 

#While Loop
number=1

while [ $number -le/-lt/gt/ge 10 ]
do
  echo "$number is true"
  number=$(( number+1 )) #This line refers to arithemetic expanision, it will increment value by +1 to variable value.
done 

#Until Loop

number=3

until [ $number -gt/ge 10 ]
do
  echo "$number is true"
  number=$(( number+1 ))
done 

#For Loop

for n in {0..15..2} #{Start..Ending..increament}
do
    echo $n
done 
#Another way to excute for loop sytax
for  (( n=0; n<5; n++ ))
do
    echo $n
done

#Nested Loops

for n in 1 2; do  # OuterLoop
    for j in A B; do # InnerLoop
        echo $j $n
    done
done 


#Break and Continue statement.

for (( i=0 ; i<=20; i++ ))
do
    if [ $i -gt 10 ]
    then
        break/continue
    fi 
    echo $i 
    
done 

#Script Input (STDIN)

 #Capture all script arguments into an array
args=("$@")

 #Display the script name and arguments
echo  ${args[0]}  ${args[1]} ${args[2]}

echo $#

#expl-2

echo "reading from file"

while read line
do
    echo $line
done < test.sh

# Script Output (STDOUT)

ls -al >test2.sh 

#PIPE Oringinal script and create new test.sh file with echo content and run the script
#how to send output from one script to another scrpt

MESSAGE="Hello Linux Audience"
export MESSAGE
./test.sh 

#String Processing

echo "enter 1st string"
read st1

echo "enter 2st string"
read st2

if [ "st1" == "st2" ]
then   
        echo "string match"
else
        echo "string doesn't match"
fi

#EXP-2

echo "enter 1st string"
read st1

echo "enter 2nd string"
read st2

if [ "$st1" \< "$st2" ]
then   
        echo "$st1 is smaller than $st2"
elif  [ "$st1" \> "$st2" ]
then
        echo "$st2 is smaller than $st1"  
else
        echo "both strings are equal"
        
fi

#Concatanate both the strings to one value

echo "enter 1st string"
read st1

echo "enter 2nd string"
read st2

C=$st1$st2

echo $C

#Captalizing the values of strings
echo "enter 1st string"
read st1

echo "enter 2nd string"
read st2


echo ${st1^} # ^ sign is used for capitalising starting letter
echo ${st2^^} # ^^ sign is used for capitalising all letters


#Arthimetic Expansion  

n=44
b=45

echo $((n + b))
echo $((n - b))
echo $((n * b))
echo $((n / b))
echo $((n % b))

echo $(expr $n + $b)
echo $(expr $n - $b)
echo $(expr $n * $b)
echo $(expr $n / $b)
echo $(expr $n % $b)

#Converting Hex numbers to decimal value script

echo "Enter Hex Number of your choice"
read Hex

echo -n "The decimal value of $Hex is: "

echo "obase=10; ibase=16; $Hex" | bc

#Arrays

car=( 'bentley' 'bmw' 'ford')

unset car[2] #To remove any value in an array
car[4]=Merc       #To add any new index value to an array.
echo "${car[0]}"

echo "${!car[@]}"

echo "${#car[@]}"














