echo "Welcome to FLIP COIN Simulalation problem Solution"
read -p "Enter number of times loop to be executed:" n
read -p "Enter number of times after which loop should break:" a
Head=0
Tail=0
if [ $n -lt $a ]
then
echo "error:loop times should greater than loop breaking condition"
fi
if [ $n -ge $a ]
then
for (( i=0; i<=n; i++ ))
do
     flip=$(( RANDOM%2 ))

           if [ $flip -eq "1" ]
           then
               ((Head++))

           else
               ((Tail++))
           fi
            if [[ $Head -eq $a || $Tail -eq $a ]]
                 then
                       break
                 fi

done
fi
 echo "Head wins ="$Head
 echo "Tail wins ="$Tail
         if [ $Head -gt $Tail ]
                  then
                       won1=$(( $Head-$Tail ))
                       echo "Head won by $won1 times"
         fi

                 if [ $Tail -gt $Head ]
                 then
                        won2=$(( $Tail-$Head )) 

                        echo "Tail won by $won2 times"
                  fi
                 if [ $Head -eq $Tail ]
                     then
                      echo " Match ties "
                 fi
