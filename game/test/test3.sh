#!/bin/bash


source story
source roll
source chrsht

player=( "${warrior[@]}" )
plyrhp=( "${warrior[1]}")
str="${player[2]}"
lck="${player[8]}"
spd="${player[6]}"
x="$(rollnum 1d20)"
ans="10"

echo "what do you do?
"

z="false"
q="false"

while [ "$q" == "false" ];
do

    echo " East or West?
    "

    read answer

#
#
#East Answer
#
#


    if [[ "$answer" == "east"  ||  "$answer" == "East" ]]
    then
        if [ "$z" == "false" ]
        then
            echo "  Perception Check!"

            if [ "$lck" -gt "$chk" ];
            then
                droll="$(($lck - $chk))"

                chk="$(($x + $droll))"
            fi
                echo "your have a +$droll modifier from luck
                "

                echo "you must roll a 10 out of 20 or higher
                "
                echo "  you rolled a $chk
                "

            if [ $chk -gt $ans ];
            then
                echo "  Check Successful!
                "
                echo "$b01"
                z="true"
                y="true"
            else
                echo "  Check Failed!
                "
                z="true"
                y="false"
                echo "You notice nothig of interest
                "
            fi
                echo "  Did you want to go east y/n?"
                read yn

            if [[ "$yn" == "yes" || "$yn" == "Yes" || "$yn" == "y" || "$yn" == "Y" ]];
            then
                q="true"
                ./eastqst
            else
                q="false"
            fi
    else
        echo $b01
        echo "  Did you want to go east y/n?"

        read yn

            if [[ "$yn" == "yes" || "$yn" == "Yes" || "$yn" == "y" || "$yn" == "Y" ]];
            then
                q="true"
                z="true"
                ./eastqst
            else
                q="false"
                z="true"
            fi
        fi
    fi

#
#
# West Answer
#
#
    if [[ "$answer" == "west"  ||  "$answer" == "West" ]]
    then
        if [ "$z" == "false" ]
        then
            echo "  Perception Check!"

            if [ "$lck" -gt "$chk" ];
            then
                droll="$(($lck - $chk))"
                chk="$(($x + $droll))"

            fi
                echo "your have a +$droll modifier from luck
                "

                echo "you must roll a 10 out of 20 or higher
                "
                echo "  you rolled a $chk
                "

            if [ $chk -gt $ans ];
            then
                echo "  Check Successful!
                "
                echo "$c01"
                z="true"
                y="true"
            else
                echo "  Check Failed!
                "
                z="true"
                y="false"
                echo "You notice nothig of interest
                "
            fi
                echo "  Did you want to go east y/n?"
                read yn

            if [[ "$yn" == "yes" || "$yn" == "Yes" || "$yn" == "y" || "$yn" == "Y" ]];
            then
                q="true"
                ./westqst
            else
                q="false"
            fi
    else
        echo $b01
        echo "  Did you want to go east y/n?"

        read yn

            if [[ "$yn" == "yes" || "$yn" == "Yes" || "$yn" == "y" || "$yn" == "Y" ]];
            then
                q="true"
                z="true"
                ./westqst
            else
                q="false"
                z="true"
            fi
        fi
    fi

done
