#!/bin/bash


source story
source roll
source chrsht



read purpose

if [ "$purpose" == "a" ]
then
    player=( "${warrior[@]}" )
    echo $varq1  $myvar1
    sleep 2
    echo "
    Your charcter stats:
    ${player[@]}."

elif [ "$purpose" == "b" ]
then
    player=( "${mage[@]}" )
    echo $varq1  $myvar2
    sleep 2
    echo "
    Your charcter stats:
    ${player[@]}."

elif [ "$purpose" == "c" ]
then
    player=( "${rogue[@]}" )
    echo $varq1  $myvar3
    sleep 2
    echo "
    Your charcter stats:
    ${player[@]}."
fi


#Begin Story#


#Question 3#

echo "what do you do?"

myvar1="You find some rags and burlap, and fashion them around yourself.
"
echo "a. Look around for something to disuigse yourself"
myvar11="You've Been Caught! You are fashioned back in your shackles and hustled back into line
"
myvar2="You see a small broken skiff, capsized in the sand
you crawl underneath. As best you can.."
echo "b. Hide and wait for your opprotunity to escape."

myvar3="You grab an oar and run for the nearest captor"
echo "c. Grab the nearest object you can use as a weapon and advance on your captors."


read answer3

str="${player[1]}"
lck="${player[7]}"
spd="${player[5]}"
x="$(rollnum 1d20)"
lckchk="5"
ans3="10"

if [ "$answer3" == "a" ]
then
    if [ "$lck" -gt "$lckchk" ]
    then
        droll="$(($lck - $lckchk))"
        echo "your have a +$droll modifier from luck
        "
        sleep 1.5

        echo "you must roll a 10 out of 20 or higher
        "
        sleep 1.5

        lckchk="$(($x + $droll))"

        echo "you rolled a $lckchk"
        sleep 1.5
    fi

    if [ $lckchk -gt $ans3 ]
    then
        echo "Check Successful!
        "
        sleep 2
        echo "$myvar1"
    else
        echo "Check Failed!
        "
        echo "$myvar11"
    fi

elif [ "$answer3" == "b" ]
then
    if [ "$lck" -gt "$lckchk" ]
    then
        droll="$(($lck - $lckchk))"
        echo "your have a +$droll modifier from luck
        "
        sleep 1.5

        echo "you must roll a 10 out of 20 or higher
        "
        sleep 1.5

        lckchk="$(($x + $droll))"

        echo "you rolled a $lckchk"
        sleep 1.5
    fi

    if [ $lckchk -gt $ans3 ]
    then
        echo "Check Successful!
        "
        sleep 2
        echo "$myvar1"
    else
        echo "Check Failed!
        "
        echo "$myvar11"
    fi

elif [ "$answer3" == "c" ]
then
    if [ "$lck" -gt "$lckchk" ]
    then
        droll="$(($lck - $lckchk))"
        echo "your have a +$droll modifier from luck
        "
        sleep 1.5

        echo "you must roll a 10 out of 20 or higher
        "
        sleep 1.5

        lckchk="$(($x + $droll))"

        echo "you rolled a $lckchk"
        sleep 1.5
    fi

    if [ $lckchk -gt $ans3 ]
    then
        echo "Check Successful!
        "
        sleep 2
        echo "$myvar1"
    else
        echo "Check Failed!
        "
        echo "$myvar11"
    fi
fi
