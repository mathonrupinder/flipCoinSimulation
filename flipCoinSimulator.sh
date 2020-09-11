echo "Welcome to FLIP COIN Simulalation problem Solution"
read -p "Enter number of times loop to be executed:" n
read -p "Enter number of times after which loop should break:" a
Head=0
Tail=0
tie=0
function fun1(){
flip=$(( RANDOM%2 ))

           if [ $flip -eq "1" ]
           then
               ((Head++))

           else
               ((Tail++))
           fi
}
if [ $n -lt $a ]
then
echo "error:loop times should greater than loop breaking condition"
fi

function fun2(){

for (( i=0; i<=n; i++ ))
do
           fun1
           if [[ $Head -eq $a || $Tail -eq $a ]]
                 then
                      echo "Head wins ="$Head
                      echo "Tail wins ="$Tail

                       if [ $Head -gt $Tail ]
                       then
                              c=$(( $Head-$Tail ))
                          echo "Head wins by $c times"

                          break
                       fi
                       if [ $Tail -gt $Head ]
                         then
                              d=$(( $Tail-$Head ))
                              echo "Tail wins by $d times"

                       break
                       fi
                       if [ $Head -eq $Tail ]
                          then
                                 c=$(( $Head-$Tail ))
                                 d=$(( $Tail-$Head ))
                                   if [[ $c != 2 || ! $d != 2 ]]
                                then
                                    fun2

                        fi


                 fi

fi

done
}
#### main script
if [ $n -ge $a ]
then
 fun1
    fun2
fi

