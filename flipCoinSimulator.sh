echo "Welcome to FLIP COIN Simulalation problem Solution"
read -p "Enter number of loop to be executed:" n
Head=0
Tail=0
for (( i=0; i<=n; i++ ))
do
     flip=$(( RANDOM%2 ))

           if [ $flip -eq "1" ]
           then
               ((Head++))

           else
               ((Tail++))
           fi

done
 echo "Head wins ="$Head
 echo "Tail wins ="$Tail

